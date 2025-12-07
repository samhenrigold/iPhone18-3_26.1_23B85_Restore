uint64_t sub_255EA3758()
{
  v0 = sub_255ECF198();
  __swift_allocate_value_buffer(v0, qword_27F815838);
  __swift_project_value_buffer(v0, qword_27F815838);

  return sub_255ECF188();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_255EA3840()
{
  v0 = sub_255ECF198();
  __swift_allocate_value_buffer(v0, qword_27F815858);
  __swift_project_value_buffer(v0, qword_27F815858);

  return sub_255ECF188();
}

uint64_t sub_255EA38F0()
{
  v0 = sub_255ECF198();
  __swift_allocate_value_buffer(v0, qword_27F815878);
  __swift_project_value_buffer(v0, qword_27F815878);

  return sub_255ECF188();
}

uint64_t sub_255EA3A58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_255ECF198();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);

  return sub_255ECF188();
}

uint64_t sub_255EA3B04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_255ECF198();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
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

uint64_t sub_255EA3C18@<X0>(uint64_t a1@<X8>)
{
  v2 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v3 = [v2 Audio];
  swift_unknownObjectRelease();
  v4 = [v3 AdaptiveVolume];
  swift_unknownObjectRelease();
  v5 = [v4 publisher];

  v6 = swift_allocObject();
  *(v6 + 16) = sub_255EAF5DC(MEMORY[0x277D84F90]);
  v16 = sub_255EAF6E0;
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_255EB29BC;
  v15 = &block_descriptor;
  v7 = _Block_copy(&v12);

  v16 = sub_255EAF700;
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_255EB29BC;
  v15 = &block_descriptor_3;
  v8 = _Block_copy(&v12);

  v9 = [v5 sinkWithCompletion:v7 receiveInput:v8];
  _Block_release(v8);
  _Block_release(v7);

  swift_beginAccess();

  AVLogReader.convertBiomeEventsToDataFrame(_:)(v10, a1);
}

uint64_t sub_255EA3E78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_255EA3EB0(uint64_t a1, uint64_t a2)
{
  if (qword_27F815850 != -1)
  {
    swift_once();
  }

  v3 = sub_255ECF198();
  __swift_project_value_buffer(v3, qword_27F815858);

  v4 = sub_255ECF178();
  v5 = sub_255ECF3F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    swift_beginAccess();
    *(v6 + 4) = *(*(a2 + 16) + 16);

    _os_log_impl(&dword_255EA2000, v4, v5, "Completed reading from Biome. Found %ld events.", v6, 0xCu);
    MEMORY[0x259C511E0](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_255EA3FF8(void *a1, uint64_t a2)
{
  v2 = [a1 jsonDictionary];
  v3 = sub_255ECF1F8();

  v4 = 0;
  v5 = 0;
  v6 = MEMORY[0x277D837E0];
  while (1)
  {
    v7 = byte_2867F8F18[v5 + 32];
    *&v55[0] = sub_255EB29D0(v7);
    *(&v55[0] + 1) = v8;
    sub_255ECF498();
    if (*(v3 + 16))
    {
      v9 = sub_255EACB4C(&v53);
      if (v10)
      {
        break;
      }
    }

    sub_255EB28C8(&v53);
LABEL_3:
    if (++v5 == 36)
    {

      [a1 timestamp];
      v54 = MEMORY[0x277D839F8];
      *&v53 = v33;
      v11 = a2;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v52[0] = *(a2 + 16);
      v35 = *&v52[0];
      *(a2 + 16) = 0x8000000000000000;
      v15 = sub_255EACAD4(0x6D617473656D6974, 0xE900000000000070);
      v37 = v35[2];
      v38 = (v36 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_35;
      }

      v40 = v36;
      if (v35[3] >= v39)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_255EAD614();
          v35 = *&v52[0];
        }
      }

      else
      {
        sub_255EACD10(v39, isUniquelyReferenced_nonNull_native);
        v35 = *&v52[0];
        v41 = sub_255EACAD4(0x6D617473656D6974, 0xE900000000000070);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_38;
        }

        v15 = v41;
      }

      *(a2 + 16) = v35;
      if (v40)
      {
        goto LABEL_29;
      }

      v35[(v15 >> 6) + 8] |= 1 << v15;
      v43 = (v35[6] + 16 * v15);
      *v43 = 0x6D617473656D6974;
      v43[1] = 0xE900000000000070;
      *(v35[7] + 8 * v15) = MEMORY[0x277D84F90];
      v44 = v35[2];
      v26 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (!v26)
      {
        v35[2] = v45;
LABEL_29:
        v3 = v35[7];
        v11 = *(v3 + 8 * v15);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 8 * v15) = v11;
        if ((v46 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      __break(1u);
LABEL_38:
      result = sub_255ECF598();
      __break(1u);
      return result;
    }
  }

  v11 = v6;
  sub_255EAF798(*(v3 + 56) + 32 * v9, v52);
  sub_255EB28C8(&v53);
  sub_255EB2798(v52, v55);
  v12 = sub_255EB29D0(v7);
  v14 = v13;
  sub_255EAF798(v55, &v53);
  swift_beginAccess();
  sub_255EB291C(v4, 0);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  v4 = sub_255EACAD4(v12, v14);
  v18 = v16[2];
  v19 = (v17 & 1) == 0;
  v20 = v18 + v19;
  if (!__OFADD__(v18, v19))
  {
    v21 = v17;
    if (v16[3] >= v20)
    {
      if ((v15 & 1) == 0)
      {
        sub_255EAD614();
      }
    }

    else
    {
      sub_255EACD10(v20, v15);
      v22 = sub_255EACAD4(v12, v14);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_38;
      }

      v4 = v22;
    }

    *(a2 + 16) = v16;
    if ((v21 & 1) == 0)
    {
      v16[(v4 >> 6) + 8] |= 1 << v4;
      v24 = (v16[6] + 16 * v4);
      *v24 = v12;
      v24[1] = v14;
      *(v16[7] + 8 * v4) = MEMORY[0x277D84F90];
      v25 = v16[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_34;
      }

      v16[2] = v27;
    }

    v28 = v16[7];
    v29 = *(v28 + 8 * v4);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *(v28 + 8 * v4) = v29;
    if ((v30 & 1) == 0)
    {
      v29 = sub_255EAC2CC(0, *(v29 + 2) + 1, 1, v29);
      *(v28 + 8 * v4) = v29;
    }

    v32 = *(v29 + 2);
    v31 = *(v29 + 3);
    if (v32 >= v31 >> 1)
    {
      v29 = sub_255EAC2CC((v31 > 1), v32 + 1, 1, v29);
      *(v28 + 8 * v4) = v29;
    }

    *(v29 + 2) = v32 + 1;
    sub_255EB2798(&v53, &v29[32 * v32 + 32]);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_0(v55);
    v4 = sub_255EA4514;
    v6 = v11;
    goto LABEL_3;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  v11 = sub_255EAC2CC(0, *(v11 + 2) + 1, 1, v11);
  *(v3 + 8 * v15) = v11;
LABEL_30:
  v48 = *(v11 + 2);
  v47 = *(v11 + 3);
  if (v48 >= v47 >> 1)
  {
    v11 = sub_255EAC2CC((v47 > 1), v48 + 1, 1, v11);
    *(v3 + 8 * v15) = v11;
  }

  *(v11 + 2) = v48 + 1;
  sub_255EB2798(&v53, &v11[32 * v48 + 32]);
  swift_endAccess();
  return sub_255EB291C(v4, 0);
}

void sub_255EA4528(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t AVLogReader.convertBiomeEventsToDataFrame(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_255ECF0F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v79 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8158F8, &qword_255ECFB70);
  v78 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v71 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815900, &qword_255ECFB78);
  v77 = *(v82 - 8);
  v8 = MEMORY[0x28223BE20](v82);
  v76 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v84 = &v71 - v10;
  v92 = sub_255ECEE68();
  v11 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815908, &qword_255ECFB80);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v90 = &v71 - v18;
  v19 = sub_255ECF078();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v91 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255ECF068();
  v93 = a1;
  v22 = sub_255EAA038(a1);
  v88 = v15;
  v89 = v20;
  if (!v22)
  {
    goto LABEL_5;
  }

  v23 = *(v22 + 16);

  if (!v23)
  {
    goto LABEL_5;
  }

  v24 = sub_255EACA50(v23, 0);
  if (sub_255EAF538(v95, (v24 + 4), v23, 0, v23 - 1) != v23)
  {
    __break(1u);
LABEL_5:
    v24 = MEMORY[0x277D84F90];
  }

  v95[0] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815910, &qword_255ECFB88);
  v85 = sub_255EB2624(&qword_27F815918, &qword_27F815910, &qword_255ECFB88, MEMORY[0x277D83970]);
  v86 = v25;
  sub_255ECF108();
  sub_255ECF028();
  if (*(v93 + 16))
  {
    v26 = sub_255EACAD4(0x6D617473656D6974, 0xE900000000000070);
    if (v27)
    {
      v83 = v14;
      v73 = v5;
      v28 = *(*(v93 + 56) + 8 * v26);
      v29 = *(v28 + 16);
      v30 = MEMORY[0x277D84F90];
      v74 = a2;
      if (v29)
      {
        v72 = v19;
        v75 = v4;
        v96 = MEMORY[0x277D84F90];

        sub_255EADBB8(0, v29, 0);
        v30 = v96;
        v71 = v28;
        v31 = v28 + 32;
        do
        {
          sub_255EAF798(v31, v95);
          sub_255EAF798(v95, v94);
          swift_dynamicCast();
          sub_255ECEBB8();
          __swift_destroy_boxed_opaque_existential_0(v95);
          v96 = v30;
          v33 = *(v30 + 16);
          v32 = *(v30 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_255EADBB8((v32 > 1), v33 + 1, 1);
            v30 = v96;
          }

          *(v30 + 16) = v33 + 1;
          (*(v11 + 32))(v30 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v33, v13, v92);
          v31 += 32;
          --v29;
        }

        while (v29);

        v4 = v75;
        v19 = v72;
      }

      v95[0] = v30;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815920, &qword_255ECFB90);
      v42 = sub_255EB2624(&qword_27F815928, &qword_27F815920, &qword_255ECFB90, MEMORY[0x277D83970]);
      v72 = v41;
      v71 = v42;
      sub_255ECF108();
      sub_255ECF028();
      v43 = 0;
      ++v77;
      v75 = (v78 + 8);
      ++v88;
      while (1)
      {
        v44 = byte_2867F8F18[v43 + 32];
        if (sub_255EAB918(v44, byte_2867F8F60))
        {
          v45 = sub_255EB29D0(v44);
          if (*(v93 + 16))
          {
            sub_255EACAD4(v45, v46);
            v48 = v47;

            if (v48)
            {

              v50 = sub_255EABAE8(v49);

              if (v50)
              {
                sub_255EB29D0(v44);
                v95[0] = v50;
                v51 = v87;
                sub_255ECF108();
                sub_255ECF028();
                (*v88)(v51, v83);
              }
            }

            goto LABEL_21;
          }
        }

        else if (sub_255EAB918(v44, &unk_2867F8FA8))
        {
          v52 = sub_255EB29D0(v44);
          if (*(v93 + 16))
          {
            sub_255EACAD4(v52, v53);
            v55 = v54;

            if (v55)
            {

              v57 = sub_255EABBF4(v56);

              if (v57)
              {
                v78 = sub_255EB29D0(v44);
                v95[0] = v57;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815930, &unk_255ECFB98);
                sub_255EB2624(&qword_27F815938, &qword_27F815930, &unk_255ECFB98, MEMORY[0x277D83970]);
                v58 = v80;
                sub_255ECF108();
                sub_255ECF028();
                (*v75)(v58, v81);
              }
            }

            goto LABEL_21;
          }
        }

        else
        {
          if (!sub_255EAB918(v44, &unk_2867F8FD0))
          {
            goto LABEL_21;
          }

          v59 = sub_255EB29D0(v44);
          if (*(v93 + 16))
          {
            sub_255EACAD4(v59, v60);
            v62 = v61;

            if (v62)
            {

              v64 = sub_255EABD08(v63);

              if (v64)
              {
                sub_255EB29D0(v44);
                v95[0] = v64;
                v65 = v76;
                sub_255ECF108();
                sub_255ECF028();
                (*v77)(v65, v82);
              }
            }

            goto LABEL_21;
          }
        }

LABEL_21:
        if (++v43 == 36)
        {
          v66 = v73;
          v67 = v79;
          (*(v73 + 104))(v79, *MEMORY[0x277CE18E0], v4);
          v68 = v74;
          v69 = v91;
          sub_255ECEF38();
          (*(v66 + 8))(v67, v4);
          (*v77)(v84, v82);
          (*v88)(v90, v83);
          v70 = v89;
          (*(v89 + 8))(v69, v19);
          return (*(v70 + 56))(v68, 0, 1, v19);
        }
      }
    }
  }

  v34 = v88;
  if (qword_27F815850 != -1)
  {
    swift_once();
  }

  v35 = sub_255ECF198();
  __swift_project_value_buffer(v35, qword_27F815858);
  v36 = sub_255ECF178();
  v37 = sub_255ECF408();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_255EA2000, v36, v37, "Got no timestamps when reading from biome. Returning nil", v38, 2u);
    MEMORY[0x259C511E0](v38, -1, -1);
  }

  v34[1](v90, v14);
  v39 = v89;
  (*(v89 + 8))(v91, v19);
  return (*(v39 + 56))(a2, 1, 1, v19);
}

void sub_255EA51D4()
{
  if (qword_27F815850 != -1)
  {
    swift_once();
  }

  v0 = sub_255ECF198();
  __swift_project_value_buffer(v0, qword_27F815858);
  oslog = sub_255ECF178();
  v1 = sub_255ECF3F8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_255EA2000, oslog, v1, "Completed reading from Biome.", v2, 2u);
    MEMORY[0x259C511E0](v2, -1, -1);
  }
}

void sub_255EA52BC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AB8, &qword_255ECFF48);
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - v5;
  v6 = sub_255ECEE68();
  v34 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815950, &qword_255ECFBB8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = type metadata accessor for AVBiomeEventSummary(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 eventBody];
  if (v19)
  {
    v32 = a2;
    v20 = v19;
    [a1 timestamp];
    sub_255ECEBB8();
    v33 = v20;
    AVBiomeEventSummary.init(eventBody:inputTimestamp:)(v20, v11, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_255EB1E28(v14, &qword_27F815950, &qword_255ECFBB8);
      if (qword_27F815850 != -1)
      {
        swift_once();
      }

      v21 = sub_255ECF198();
      __swift_project_value_buffer(v21, qword_27F815858);
      v22 = sub_255ECF178();
      v23 = sub_255ECF408();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_255EA2000, v22, v23, "Got invalid headphone mode while running, skipping event", v24, 2u);
        MEMORY[0x259C511E0](v24, -1, -1);
      }
    }

    else
    {
      sub_255EB272C(v14, v18, type metadata accessor for AVBiomeEventSummary);
      [a1 timestamp];
      sub_255ECEBB8();
      v25 = *(v4 + 48);
      v26 = v35;
      (*(v34 + 32))(v35, v9, v6);
      sub_255EB26C4(v18, v26 + v25, type metadata accessor for AVBiomeEventSummary);
      v27 = v32;
      swift_beginAccess();
      v28 = *(v27 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 16) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_255EAC3DC(0, v28[2] + 1, 1, v28);
        *(v27 + 16) = v28;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v28 = sub_255EAC3DC((v30 > 1), v31 + 1, 1, v28);
      }

      v28[2] = v31 + 1;
      sub_255EB2860(v26, v28 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v31, &qword_27F815AB8, &qword_255ECFF48);
      *(v27 + 16) = v28;
      swift_endAccess();

      sub_255EAFF7C(v18);
    }
  }
}

uint64_t AVBiomeEventSummary.init(eventBody:inputTimestamp:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AVBiomeEventSummary(0);
  v20 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [a1 headphoneMode];
  if (v9 < 4)
  {
    *(v8 + 25) = v9;
    v10 = [a1 streamType];
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(v8 + 26) = 2;
        v11 = [a1 predVolSiriPrct];
        goto LABEL_13;
      }
    }

    else
    {
      if (!v10)
      {
        *(v8 + 26) = 0;
        v11 = [a1 predVolMediaPrct];
        goto LABEL_13;
      }

      if (v10 == 1)
      {
        *(v8 + 26) = 1;
        v11 = [a1 predVolTelephonyPrct];
LABEL_13:
        *(v8 + v6[15]) = v11;
        *v8 = [a1 smoothEae];
        v8[1] = [a1 personalizationCoeff] / 50.0;
        v8[2] = [a1 anchorEnv];
        v8[3] = [a1 anchorVol];
        v15 = [a1 smoothEae];
        v8[4] = v15 - [a1 anchorEnv];
        *(v8 + 5) = [a1 currentVolumePrct];
        *(v8 + 24) = [a1 singleBudFlag] != 0;
        v16 = v6[13];
        v17 = sub_255ECEE68();
        v18 = *(v17 - 8);
        (*(v18 + 16))(v8 + v16, a2, v17);
        LODWORD(v16) = [a1 manualVolumeChangeFlag];

        (*(v18 + 8))(a2, v17);
        *(v8 + v6[14]) = v16 == 1;
        sub_255EB272C(v8, a3, type metadata accessor for AVBiomeEventSummary);
        return (*(v20 + 56))(a3, 0, 1, v6);
      }
    }

    *(v8 + 26) = 3;
    v11 = 255;
    goto LABEL_13;
  }

  v12 = sub_255ECEE68();
  (*(*(v12 - 8) + 8))(a2, v12);

  v13 = *(v20 + 56);

  return v13(a3, 1, 1, v6);
}

uint64_t sub_255EA5B1C(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AB8, &qword_255ECFF48);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815958, &qword_255ECFBC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_255EADC18(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_255EB27F8(v11, v4, &qword_27F815AB8, &qword_255ECFF48);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_255EADC18((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_255EB2860(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, &qword_27F815958, &qword_255ECFBC0);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_255EA5D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815948, &qword_255ECFBB0);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815950, &qword_255ECFBB8);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for AVBiomeEventSummary(0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815958, &qword_255ECFBC0);
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v3[26] = swift_task_alloc();
  v7 = sub_255ECEE68();
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255EA6028, 0, 0);
}

uint64_t sub_255EA6028()
{
  v1 = *(v0 + 80);
  (*(*(v0 + 224) + 16))(*(v0 + 240), *(v0 + 72), *(v0 + 216));
  v2 = MEMORY[0x277D84F90];
  v3 = sub_255EAF9C0(MEMORY[0x277D84F90]);
  v4 = sub_255EAE2F8(v1);
  *(v0 + 48) = v4;
  v148 = (v0 + 48);
  v145 = sub_255EAE210(v1);
  *(v0 + 56) = v145;
  v150 = (v0 + 56);
  if (sub_255ECF388())
  {
    goto LABEL_2;
  }

  while (1)
  {
    v153 = v3;
    v40 = sub_255EAFAC4(*(v0 + 240), *(v0 + 80));
    *(v0 + 248) = v40;
    v41 = *(v40 + 16);
    *(v0 + 256) = v41;
    v146 = v2;
    if (!v41)
    {
      goto LABEL_112;
    }

    v43 = *(v0 + 216);
    v42 = *(v0 + 224);
    v44 = *(v0 + 200);
    v45 = *(v0 + 208);
    v47 = *(v0 + 152);
    v46 = *(v0 + 160);
    v48 = *(v46 + 80);
    *(v0 + 416) = v48;
    v156 = v40;
    v49 = *(v46 + 72);
    *(v0 + 264) = v49;
    sub_255EB27F8(v40 + ((v48 + 32) & ~v48) + v49 * (v41 - 1), v44, &qword_27F815958, &qword_255ECFBC0);
    v50 = *(v42 + 32);
    v51 = *(v47 + 48);
    *(v0 + 272) = v50;
    *(v0 + 280) = (v42 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v50(v45, v44, v43);
    (*(v42 + 56))(v45, 0, 1, v43);
    sub_255EAFF7C(v44 + v51);
    if ((*(v42 + 48))(v45, 1, v43) == 1)
    {
      (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

      goto LABEL_114;
    }

    v50(*(v0 + 232), *(v0 + 208), *(v0 + 216));
    if (qword_27F815850 != -1)
    {
      swift_once();
    }

    v52 = sub_255ECF198();
    *(v0 + 288) = __swift_project_value_buffer(v52, qword_27F815858);

    v53 = sub_255ECF178();
    v54 = sub_255ECF3F8();
    v3 = v153;
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = *(v156 + 16);

      _os_log_impl(&dword_255EA2000, v53, v54, "Read %ld events from biome", v55, 0xCu);
      MEMORY[0x259C511E0](v55, -1, -1);
    }

    else
    {
    }

    v56 = v146;

    v57 = *(v0 + 152);
    v58 = *(v0 + 136);
    *(v0 + 296) = *(v156 + 16);
    *(v0 + 420) = *(v57 + 48);
    *(v0 + 424) = *(v58 + 80);
    *(v0 + 320) = v146;
    *(v0 + 328) = v145;
    *(v0 + 304) = v153;
    *(v0 + 312) = 0;
    v59 = *(v0 + 248);
    if (!*(v59 + 16))
    {
LABEL_115:
      __break(1u);
LABEL_116:
      v2 = v56;
LABEL_2:
      v146 = v2;
      result = sub_255EAF9C0(MEMORY[0x277D84F90]);
      v6 = result;
      v7 = 0;
      v152 = v3;
      v10 = *(v3 + 64);
      v9 = v3 + 64;
      v8 = v10;
      v11 = -1;
      v12 = -1 << *(v9 - 32);
      if (-v12 < 64)
      {
        v11 = ~(-1 << -v12);
      }

      v13 = v11 & v8;
      v14 = (63 - v12) >> 6;
      v147 = v9;
      v144 = v14;
LABEL_6:
      if (!v13)
      {
        while (1)
        {
          v15 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_123;
          }

          if (v15 >= v14)
          {
            break;
          }

          v13 = *(v9 + 8 * v15);
          ++v7;
          if (v13)
          {
            goto LABEL_11;
          }
        }

        (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

        v153 = v6;
        goto LABEL_99;
      }

      v15 = v7;
LABEL_11:
      v149 = v15;
      v151 = (v13 - 1) & v13;
      v16 = __clz(__rbit64(v13)) | (v15 << 6);
      v17 = (*(v152 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v152 + 56) + 4 * v16);
      sub_255EAFED4();
      sub_255EAFF28();

      v21 = 3;
      v22 = &unk_2867F8EF0;
      while (1)
      {
        v24 = *(v22 - 1);
        v23 = *v22;
        *(v0 + 16) = v18;
        *(v0 + 24) = v19;
        *(v0 + 32) = v24;
        *(v0 + 40) = v23;
        if ((sub_255ECF208() & 1) == 0)
        {
          goto LABEL_14;
        }

        v25 = v6;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v18;
        v28 = isUniquelyReferenced_nonNull_native;
        v159 = v6;
        v29 = v27;
        v30 = v19;
        v32 = sub_255EACAD4(v27, v19);
        v33 = v25[2];
        v34 = (v31 & 1) == 0;
        result = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          __break(1u);
          goto LABEL_118;
        }

        v35 = v31;
        if (v25[3] >= result)
        {
          if ((v28 & 1) == 0)
          {
            result = sub_255EAD784();
            v25 = v159;
          }

          v18 = v29;
          if ((v35 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_255EACFB8(result, v28);
          v18 = v29;
          result = sub_255EACAD4(v29, v30);
          if ((v35 & 1) != (v36 & 1))
          {

            return sub_255ECF598();
          }

          v32 = result;
          v25 = v159;
          if ((v35 & 1) == 0)
          {
LABEL_24:
            v25[(v32 >> 6) + 8] |= 1 << v32;
            v37 = (v25[6] + 16 * v32);
            *v37 = v18;
            v37[1] = v30;
            *(v25[7] + 4 * v32) = v20;
            v38 = v25[2];
            v77 = __OFADD__(v38, 1);
            v39 = v38 + 1;
            if (v77)
            {
              goto LABEL_124;
            }

            v6 = v25;
            v25[2] = v39;

            goto LABEL_13;
          }
        }

        v6 = v25;
        *(v25[7] + 4 * v32) = v20;
LABEL_13:
        v19 = v30;
LABEL_14:
        v22 += 2;
        if (!--v21)
        {

          v7 = v149;
          v13 = v151;
          v9 = v147;
          v14 = v144;
          goto LABEL_6;
        }
      }
    }

    v60 = 0;
LABEL_35:
    v61 = *(v0 + 272);
    v153 = *(v0 + 280);
    v154 = *(v0 + 420);
    v62 = *(v0 + 216);
    v63 = *(v0 + 224);
    v65 = *(v0 + 184);
    v64 = *(v0 + 192);
    v66 = *(v0 + 176);
    v67 = *(v0 + 152);
    v155 = *(v0 + 144);
    v157 = *(v0 + 80);
    sub_255EB27F8(v59 + ((*(v0 + 416) + 32) & ~*(v0 + 416)) + *(v0 + 264) * v60, v64, &qword_27F815958, &qword_255ECFBC0);
    v68 = *(v67 + 48);
    v61(v65, v64, v62);
    sub_255EB272C(v64 + v154, v65 + v68, type metadata accessor for AVBiomeEventSummary);
    sub_255EB27F8(v65, v66, &qword_27F815958, &qword_255ECFBC0);
    sub_255EB272C(v66 + *(v67 + 48), v155, type metadata accessor for AVBiomeEventSummary);
    v69 = *(v63 + 8);
    *(v0 + 336) = v69;
    *(v0 + 344) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v69(v66, v62);
    v70 = v4[3];
    if (v70 >= v157)
    {
      break;
    }

    v71 = (v0 + 48);
LABEL_37:
    v72 = *v71;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (v72[2] <= v70 || (result & 1) == 0)
    {
      result = sub_255EAE84C(result, v70 + 1, 0);
      v72 = *v71;
    }

    *(v0 + 352) = v72;
    v74 = v72[3];
    v73 = v72[4];
    v77 = __OFADD__(v73, v74);
    v75 = v73 + v74;
    if (v77)
    {
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      return result;
    }

    if (v74 < 0)
    {
      if (v75 < 0)
      {
        v85 = v72[2];
        v77 = __OFADD__(v75, v85);
        v75 += v85;
        if (v77)
        {
          goto LABEL_127;
        }
      }
    }

    else
    {
      v76 = v72[2];
      v77 = __OFSUB__(v75, v76);
      v78 = v75 - v76;
      if (v78 < 0 == v77)
      {
        v75 = v78;
        if (v77)
        {
          goto LABEL_125;
        }
      }
    }

    result = sub_255EB26C4(*(v0 + 144), v72 + ((*(v0 + 424) + 40) & ~*(v0 + 424)) + *(*(v0 + 136) + 72) * v75, type metadata accessor for AVBiomeEventSummary);
    v86 = v72[3];
    v77 = __OFADD__(v86, 1);
    v87 = v86 + 1;
    if (v77)
    {
      goto LABEL_119;
    }

    v88 = *(v0 + 144);
    v72[3] = v87;
    if (*(v88 + 26) != 3 && *(*(v0 + 144) + *(*(v0 + 128) + 60)) != 255)
    {
      v140 = swift_task_alloc();
      *(v0 + 360) = v140;
      *v140 = v0;
      v140[1] = sub_255EA6EF0;

      return AVBiomeEventSummary.toModelInput()();
    }

    v89 = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v0 + 320);
    if ((v89 & 1) == 0)
    {
      v56 = sub_255EAC5CC(0, *(v56 + 2) + 1, 1, *(v0 + 320));
    }

    v91 = *(v56 + 2);
    v90 = *(v56 + 3);
    if (v91 >= v90 >> 1)
    {
      v56 = sub_255EAC5CC((v90 > 1), v91 + 1, 1, v56);
    }

    v92 = *(v0 + 328);
    v93 = *(v0 + 80);
    *(v56 + 2) = v91 + 1;
    *&v56[8 * v91 + 32] = 0x406FE00000000000;
    v94 = *(v92 + 24);
    v95 = *(v0 + 328);
    if (v94 >= v93)
    {
      do
      {
        if (v94 < 1)
        {
          v111 = 1;
        }

        else
        {
          v95 = *v150;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_255EAE3D4();
            v95 = *v150;
          }

          sub_255EB2860(v95 + ((*(*(v0 + 96) + 80) + 40) & ~*(*(v0 + 96) + 80)) + *(*(v0 + 96) + 72) * v95[4], *(v0 + 112), &qword_27F815940, &qword_255ECFBA8);
          v114 = v95[4];
          v77 = __OFADD__(v114, 1);
          v115 = v114 + 1;
          if (v77)
          {
            goto LABEL_110;
          }

          v116 = v95[3];
          if (v115 >= v95[2])
          {
            v115 = 0;
          }

          v95[4] = v115;
          if (__OFSUB__(v116, 1))
          {
            goto LABEL_111;
          }

          v111 = 0;
          v95[3] = v116 - 1;
        }

        v112 = *(v0 + 112);
        v113 = *(v0 + 80);
        (*(*(v0 + 96) + 56))(v112, v111, 1, *(v0 + 88));
        sub_255EB1E28(v112, &qword_27F815948, &qword_255ECFBB0);
        v94 = v95[3];
      }

      while (v94 >= v113);
    }

    v96 = *(v0 + 272);
    v97 = *(v0 + 216);
    v98 = *(v0 + 168);
    v99 = *(v0 + 104);
    v100 = *(v0 + 88);
    sub_255EB27F8(*(v0 + 184), v98, &qword_27F815958, &qword_255ECFBC0);
    v101 = *(v100 + 48);
    *v99 = 0x406FE00000000000;
    result = v96(&v99[v101], v98, v97);
    v102 = v95[3];
    v103 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
      goto LABEL_120;
    }

    v104 = *v150;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (v104[2] < v103 || (result & 1) == 0)
    {
      result = sub_255EAE5D0(result, v103, 0);
      v104 = *v150;
    }

    v106 = v104[3];
    v105 = v104[4];
    v77 = __OFADD__(v105, v106);
    v107 = v105 + v106;
    if (v77)
    {
      goto LABEL_121;
    }

    if (v106 < 0)
    {
      if (v107 < 0)
      {
        v117 = v104[2];
        v77 = __OFADD__(v107, v117);
        v107 += v117;
        if (v77)
        {
          goto LABEL_128;
        }
      }
    }

    else
    {
      v108 = v104[2];
      v109 = __OFSUB__(v107, v108);
      v110 = v107 - v108;
      if (v110 < 0 == v109)
      {
        v107 = v110;
        if (v109)
        {
          goto LABEL_126;
        }
      }
    }

    v118 = *(*(v0 + 152) + 48);
    result = sub_255EB27F8(*(v0 + 104), v104 + ((*(*(v0 + 96) + 80) + 40) & ~*(*(v0 + 96) + 80)) + *(*(v0 + 96) + 72) * v107, &qword_27F815940, &qword_255ECFBA8);
    v119 = v104[3];
    v77 = __OFADD__(v119, 1);
    v120 = v119 + 1;
    if (v77)
    {
      goto LABEL_122;
    }

    v121 = *(v0 + 168);
    v122 = *(v0 + 104);
    v104[3] = v120;
    sub_255EB1E28(v122, &qword_27F815940, &qword_255ECFBA8);
    sub_255EAFF7C(v121 + v118);
    v123 = sub_255ECF178();
    v124 = sub_255ECF3F8();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 134217984;
      *(v125 + 4) = 0x406FE00000000000;
      _os_log_impl(&dword_255EA2000, v123, v124, "Result: %f", v125, 0xCu);
      MEMORY[0x259C511E0](v125, -1, -1);
    }

    v126 = *(v0 + 352);
    v128 = *(v0 + 304);
    v127 = *(v0 + 312);
    v129 = *(v0 + 256);
    v130 = *(v0 + 184);
    v131 = *(v0 + 144);

    v3 = sub_255EB1968(v126, v104, v128);

    sub_255EB1E28(v130, &qword_27F815958, &qword_255ECFBC0);
    sub_255EAFF7C(v131);
    v132 = v104;
    if (v127 + 1 != v129)
    {
      v4 = *(v0 + 352);
      v60 = *(v0 + 312) + 1;
      *(v0 + 320) = v56;
      *(v0 + 328) = v132;
      *(v0 + 304) = v3;
      *(v0 + 312) = v60;
      v59 = *(v0 + 248);
      if (v60 >= *(v59 + 16))
      {
        goto LABEL_115;
      }

      goto LABEL_35;
    }

    v145 = v104;
    v133 = *(v0 + 336);
    v134 = *(v0 + 272);
    v158 = *(v0 + 296);
    v135 = *(v0 + 240);
    v136 = *(v0 + 232);
    v137 = *(v0 + 216);
    v138 = *(v0 + 80);

    v133(v135, v137);
    v134(v135, v136, v137);
    v4 = *(v0 + 352);
    if (v158 != v138)
    {
      goto LABEL_116;
    }

    v2 = v56;
    if (sub_255ECF388())
    {
      goto LABEL_2;
    }
  }

  v71 = (v0 + 48);
  while (1)
  {
    if (v70 < 1)
    {
      v79 = 1;
      goto LABEL_48;
    }

    v4 = *v148;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_255EAE4D8();
      v4 = *v148;
    }

    sub_255EB272C(v4 + ((*(v0 + 424) + 40) & ~*(v0 + 424)) + *(*(v0 + 136) + 72) * v4[4], *(v0 + 120), type metadata accessor for AVBiomeEventSummary);
    v82 = v4[4];
    v77 = __OFADD__(v82, 1);
    v83 = v82 + 1;
    if (v77)
    {
      break;
    }

    v84 = v4[3];
    if (v83 >= v4[2])
    {
      v83 = 0;
    }

    v4[4] = v83;
    if (__OFSUB__(v84, 1))
    {
      goto LABEL_109;
    }

    v79 = 0;
    v4[3] = v84 - 1;
LABEL_48:
    v80 = *(v0 + 120);
    v81 = *(v0 + 80);
    (*(*(v0 + 136) + 56))(v80, v79, 1, *(v0 + 128));
    sub_255EB1E28(v80, &qword_27F815950, &qword_255ECFBB8);
    v70 = v4[3];
    if (v70 < v81)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  v141 = *(v0 + 216);
  v142 = *(v0 + 224);
  v143 = *(v0 + 208);
  (*(v142 + 8))(*(v0 + 240), v141);

  (*(v142 + 56))(v143, 1, 1, v141);
LABEL_114:

  sub_255EB1E28(*(v0 + 208), &qword_27F815960, &qword_255ECFBC8);
LABEL_99:

  v139 = *(v0 + 8);

  return v139(v153, v146);
}

uint64_t sub_255EA6EF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {

    v4 = sub_255EA81E8;
  }

  else
  {
    v4 = sub_255EA7024;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_255EA7024()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
  v0[48] = v1;
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_255EA70E4;
  v3 = v0[46];

  return MEMORY[0x282111978](v3, v1);
}

uint64_t sub_255EA70E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 400) = a1;
  *(v4 + 408) = v1;

  v5 = *(v3 + 384);
  v6 = *(v3 + 368);

  if (v1)
  {

    v7 = sub_255EA8444;
  }

  else
  {
    v7 = sub_255EA7264;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_255EA7264()
{
  v1 = *(v0 + 400);
  swift_unknownObjectRetain();
  v2 = sub_255ECF268();
  v3 = [v1 featureValueForName_];
  swift_unknownObjectRelease();

  if (!v3 || (v4 = [v3 multiArrayValue], v3, !v4) || (v5 = objc_msgSend(v4, sel_objectAtIndexedSubscript_, 0), v4, !v5))
  {
    v112 = *(v0 + 336);
    v113 = *(v0 + 240);
    v114 = *(v0 + 232);
    v115 = *(v0 + 216);
    v116 = *(v0 + 184);
    v158 = *(v0 + 144);

    v160 = MEMORY[0x277D84F90];
    v161 = sub_255EAF9C0(MEMORY[0x277D84F90]);
    swift_unknownObjectRelease();
    sub_255EB1E28(v116, &qword_27F815958, &qword_255ECFBC0);
    v112(v114, v115);
    v112(v113, v115);
    sub_255EAFF7C(v158);

    goto LABEL_76;
  }

  [v5 doubleValue];
  v7 = v6;
  swift_unknownObjectRelease();

  while (1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v0 + 320);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_255EAC5CC(0, *(v9 + 2) + 1, 1, *(v0 + 320));
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_255EAC5CC((v10 > 1), v11 + 1, 1, v9);
    }

    v12 = *(v0 + 328);
    v13 = *(v0 + 80);
    *(v9 + 2) = v11 + 1;
    *&v9[8 * v11 + 32] = v7;
    v14 = *(v12 + 24);
    v15 = *(v0 + 328);
    if (v14 >= v13)
    {
      do
      {
        if (v14 < 1)
        {
          v32 = 1;
        }

        else
        {
          v15 = *(v0 + 56);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_255EAE3D4();
            v15 = *(v0 + 56);
          }

          sub_255EB2860(v15 + ((*(*(v0 + 96) + 80) + 40) & ~*(*(v0 + 96) + 80)) + *(*(v0 + 96) + 72) * v15[4], *(v0 + 112), &qword_27F815940, &qword_255ECFBA8);
          v35 = v15[4];
          v30 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v30)
          {
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
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
            return;
          }

          v37 = v15[3];
          if (v36 >= v15[2])
          {
            v36 = 0;
          }

          v15[4] = v36;
          if (__OFSUB__(v37, 1))
          {
            goto LABEL_115;
          }

          v32 = 0;
          v15[3] = v37 - 1;
        }

        v33 = *(v0 + 112);
        v34 = *(v0 + 80);
        (*(*(v0 + 96) + 56))(v33, v32, 1, *(v0 + 88));
        sub_255EB1E28(v33, &qword_27F815948, &qword_255ECFBB0);
        v14 = v15[3];
      }

      while (v14 >= v34);
    }

    v16 = *(v0 + 272);
    v17 = *(v0 + 216);
    v18 = *(v0 + 168);
    v19 = *(v0 + 104);
    v20 = *(v0 + 88);
    sub_255EB27F8(*(v0 + 184), v18, &qword_27F815958, &qword_255ECFBC0);
    v21 = *(v20 + 48);
    *v19 = v7;
    v16(v19 + v21, v18, v17);
    v22 = v15[3];
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_118;
    }

    v24 = *(v0 + 56);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    if (v24[2] < v23 || (v25 & 1) == 0)
    {
      sub_255EAE5D0(v25, v23, 0);
      v24 = *(v0 + 56);
    }

    v27 = v24[3];
    v26 = v24[4];
    v30 = __OFADD__(v26, v27);
    v28 = v26 + v27;
    if (v30)
    {
      goto LABEL_119;
    }

    if (v27 < 0)
    {
      if (v28 < 0)
      {
        v38 = v24[2];
        v30 = __OFADD__(v28, v38);
        v28 += v38;
        if (v30)
        {
          goto LABEL_129;
        }
      }
    }

    else
    {
      v29 = v24[2];
      v30 = __OFSUB__(v28, v29);
      v31 = v28 - v29;
      if (v31 < 0 == v30)
      {
        v28 = v31;
        if (v30)
        {
          goto LABEL_127;
        }
      }
    }

    v39 = *(*(v0 + 152) + 48);
    sub_255EB27F8(*(v0 + 104), v24 + ((*(*(v0 + 96) + 80) + 40) & ~*(*(v0 + 96) + 80)) + *(*(v0 + 96) + 72) * v28, &qword_27F815940, &qword_255ECFBA8);
    v40 = v24[3];
    v30 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v30)
    {
      goto LABEL_120;
    }

    v42 = *(v0 + 168);
    v43 = *(v0 + 104);
    v24[3] = v41;
    sub_255EB1E28(v43, &qword_27F815940, &qword_255ECFBA8);
    sub_255EAFF7C(v42 + v39);
    v44 = sub_255ECF178();
    v45 = sub_255ECF3F8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      *(v46 + 4) = v7;
      _os_log_impl(&dword_255EA2000, v44, v45, "Result: %f", v46, 0xCu);
      MEMORY[0x259C511E0](v46, -1, -1);
    }

    v47 = *(v0 + 352);
    v49 = *(v0 + 304);
    v48 = *(v0 + 312);
    v50 = *(v0 + 256);
    v51 = *(v0 + 184);
    v52 = *(v0 + 144);

    v53 = v48 + 1;
    v54 = sub_255EB1968(v47, v24, v49);

    sub_255EB1E28(v51, &qword_27F815958, &qword_255ECFBC0);
    sub_255EAFF7C(v52);
    if (v53 != v50)
    {
      v62 = *(v0 + 352);
      v80 = *(v0 + 312) + 1;
      goto LABEL_47;
    }

    v160 = v9;
    v161 = v54;
    v55 = *(v0 + 336);
    v56 = *(v0 + 296);
    v57 = *(v0 + 272);
    v58 = *(v0 + 240);
    v59 = *(v0 + 232);
    v60 = *(v0 + 216);
    v61 = *(v0 + 80);

    v55(v58, v60);
    v57(v58, v59, v60);
    v62 = *(v0 + 352);
    if (v56 != v61 || (sub_255ECF388() & 1) != 0)
    {
      break;
    }

    v63 = sub_255EAFAC4(*(v0 + 240), *(v0 + 80));
    v64 = v63;
    *(v0 + 248) = v63;
    v65 = *(v63 + 16);
    *(v0 + 256) = v65;
    if (!v65)
    {
      v150 = *(v0 + 216);
      v151 = *(v0 + 224);
      v152 = *(v0 + 208);
      (*(v151 + 8))(*(v0 + 240), v150);

      (*(v151 + 56))(v152, 1, 1, v150);
      goto LABEL_110;
    }

    v66 = *(v0 + 216);
    v67 = *(v0 + 224);
    v69 = *(v0 + 200);
    v68 = *(v0 + 208);
    v71 = *(v0 + 152);
    v70 = *(v0 + 160);
    v72 = *(v70 + 80);
    *(v0 + 416) = v72;
    v73 = *(v70 + 72);
    *(v0 + 264) = v73;
    sub_255EB27F8(v63 + ((v72 + 32) & ~v72) + v73 * (v65 - 1), v69, &qword_27F815958, &qword_255ECFBC0);
    v74 = *(v67 + 32);
    v75 = *(v71 + 48);
    *(v0 + 272) = v74;
    *(v0 + 280) = (v67 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v74(v68, v69, v66);
    (*(v67 + 56))(v68, 0, 1, v66);
    sub_255EAFF7C(v69 + v75);
    if ((*(v67 + 48))(v68, 1, v66) == 1)
    {
      (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

LABEL_110:

      sub_255EB1E28(*(v0 + 208), &qword_27F815960, &qword_255ECFBC8);
LABEL_76:

      v117 = *(v0 + 8);

      v117(v161, v160);
      return;
    }

    v74(*(v0 + 232), *(v0 + 208), *(v0 + 216));
    v54 = v161;
    if (qword_27F815850 != -1)
    {
      swift_once();
    }

    v76 = sub_255ECF198();
    *(v0 + 288) = __swift_project_value_buffer(v76, qword_27F815858);

    v77 = sub_255ECF178();
    v78 = sub_255ECF3F8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 134217984;
      *(v79 + 4) = *(v64 + 16);

      _os_log_impl(&dword_255EA2000, v77, v78, "Read %ld events from biome", v79, 0xCu);
      MEMORY[0x259C511E0](v79, -1, -1);
    }

    else
    {
    }

    v9 = v160;

    v80 = 0;
    v81 = *(v0 + 152);
    v82 = *(v0 + 136);
    *(v0 + 296) = *(v64 + 16);
    *(v0 + 420) = *(v81 + 48);
    *(v0 + 424) = *(v82 + 80);
LABEL_47:
    *(v0 + 320) = v9;
    *(v0 + 328) = v24;
    *(v0 + 304) = v54;
    *(v0 + 312) = v80;
    v83 = *(v0 + 248);
    if (v80 >= *(v83 + 16))
    {
      goto LABEL_121;
    }

    v84 = *(v0 + 272);
    v159 = *(v0 + 420);
    v86 = *(v0 + 216);
    v85 = *(v0 + 224);
    v88 = *(v0 + 184);
    v87 = *(v0 + 192);
    v89 = *(v0 + 176);
    v90 = *(v0 + 152);
    v162 = *(v0 + 144);
    v163 = *(v0 + 80);
    sub_255EB27F8(v83 + ((*(v0 + 416) + 32) & ~*(v0 + 416)) + *(v0 + 264) * v80, v87, &qword_27F815958, &qword_255ECFBC0);
    v91 = *(v90 + 48);
    v84(v88, v87, v86);
    sub_255EB272C(v87 + v159, v88 + v91, type metadata accessor for AVBiomeEventSummary);
    sub_255EB27F8(v88, v89, &qword_27F815958, &qword_255ECFBC0);
    sub_255EB272C(v89 + *(v90 + 48), v162, type metadata accessor for AVBiomeEventSummary);
    v92 = *(v85 + 8);
    *(v0 + 336) = v92;
    *(v0 + 344) = (v85 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v92(v89, v86);
    v93 = v62[3];
    if (v93 >= v163)
    {
      do
      {
        if (v93 < 1)
        {
          v102 = 1;
        }

        else
        {
          v62 = *(v0 + 48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_255EAE4D8();
            v62 = *(v0 + 48);
          }

          sub_255EB272C(v62 + ((*(v0 + 424) + 40) & ~*(v0 + 424)) + *(*(v0 + 136) + 72) * v62[4], *(v0 + 120), type metadata accessor for AVBiomeEventSummary);
          v105 = v62[4];
          v30 = __OFADD__(v105, 1);
          v106 = v105 + 1;
          if (v30)
          {
            goto LABEL_116;
          }

          v107 = v62[3];
          if (v106 >= v62[2])
          {
            v106 = 0;
          }

          v62[4] = v106;
          if (__OFSUB__(v107, 1))
          {
            goto LABEL_117;
          }

          v102 = 0;
          v62[3] = v107 - 1;
        }

        v103 = *(v0 + 120);
        v104 = *(v0 + 80);
        (*(*(v0 + 136) + 56))(v103, v102, 1, *(v0 + 128));
        sub_255EB1E28(v103, &qword_27F815950, &qword_255ECFBB8);
        v93 = v62[3];
      }

      while (v93 >= v104);
    }

    v94 = *(v0 + 48);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    if (v94[2] <= v93 || (v95 & 1) == 0)
    {
      sub_255EAE84C(v95, v93 + 1, 0);
      v94 = *(v0 + 48);
    }

    *(v0 + 352) = v94;
    v97 = v94[3];
    v96 = v94[4];
    v30 = __OFADD__(v96, v97);
    v98 = v96 + v97;
    if (v30)
    {
      goto LABEL_122;
    }

    if (v97 < 0)
    {
      if (v98 < 0)
      {
        v108 = v94[2];
        v30 = __OFADD__(v98, v108);
        v98 += v108;
        if (v30)
        {
          goto LABEL_130;
        }
      }
    }

    else
    {
      v99 = v94[2];
      v100 = __OFSUB__(v98, v99);
      v101 = v98 - v99;
      if (v101 < 0 == v100)
      {
        v98 = v101;
        if (v100)
        {
          goto LABEL_128;
        }
      }
    }

    sub_255EB26C4(*(v0 + 144), v94 + ((*(v0 + 424) + 40) & ~*(v0 + 424)) + *(*(v0 + 136) + 72) * v98, type metadata accessor for AVBiomeEventSummary);
    v109 = v94[3];
    v30 = __OFADD__(v109, 1);
    v110 = v109 + 1;
    if (v30)
    {
      goto LABEL_123;
    }

    v111 = *(v0 + 144);
    v94[3] = v110;
    v7 = 0x406FE00000000000;
    if (*(v111 + 26) != 3)
    {
      v7 = 0x406FE00000000000;
      if (*(*(v0 + 144) + *(*(v0 + 128) + 60)) != 255)
      {
        v153 = swift_task_alloc();
        *(v0 + 360) = v153;
        *v153 = v0;
        v153[1] = sub_255EA6EF0;

        AVBiomeEventSummary.toModelInput()();
        return;
      }
    }
  }

  v164 = sub_255EAF9C0(MEMORY[0x277D84F90]);
  v118 = 0;
  v119 = v54 + 64;
  v120 = -1;
  v121 = -1 << *(v54 + 32);
  if (-v121 < 64)
  {
    v120 = ~(-1 << -v121);
  }

  v122 = v120 & *(v54 + 64);
  v123 = (63 - v121) >> 6;
  v154 = v123;
  v155 = v54 + 64;
  while (2)
  {
    if (!v122)
    {
      while (1)
      {
        v124 = v118 + 1;
        if (__OFADD__(v118, 1))
        {
          goto LABEL_125;
        }

        if (v124 >= v123)
        {
          break;
        }

        v122 = *(v119 + 8 * v124);
        ++v118;
        if (v122)
        {
          goto LABEL_88;
        }
      }

      (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

      v161 = v164;
      goto LABEL_76;
    }

    v124 = v118;
LABEL_88:
    v156 = v124;
    v157 = (v122 - 1) & v122;
    v125 = __clz(__rbit64(v122)) | (v124 << 6);
    v126 = (*(v161 + 48) + 16 * v125);
    v128 = *v126;
    v127 = v126[1];
    v129 = *(*(v161 + 56) + 4 * v125);
    sub_255EAFED4();
    sub_255EAFF28();

    v130 = 3;
    v131 = &unk_2867F8EF0;
LABEL_92:
    v133 = *(v131 - 1);
    v132 = *v131;
    *(v0 + 16) = v128;
    *(v0 + 24) = v127;
    *(v0 + 32) = v133;
    *(v0 + 40) = v132;
    if ((sub_255ECF208() & 1) == 0)
    {
LABEL_91:
      v131 += 2;
      if (!--v130)
      {

        v119 = v155;
        v118 = v156;
        v123 = v154;
        v122 = v157;
        continue;
      }

      goto LABEL_92;
    }

    break;
  }

  v134 = v164;
  v135 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v128;
  v137 = v128;
  v138 = v127;
  v140 = sub_255EACAD4(v137, v127);
  v141 = *(v164 + 16);
  v142 = (v139 & 1) == 0;
  v143 = v141 + v142;
  if (__OFADD__(v141, v142))
  {
    goto LABEL_124;
  }

  v144 = v139;
  if (*(v164 + 24) >= v143)
  {
    if (v135)
    {
      if ((v139 & 1) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_89;
    }

    sub_255EAD784();
    v134 = v164;
    if (v144)
    {
      goto LABEL_89;
    }

LABEL_100:
    v134[(v140 >> 6) + 8] |= 1 << v140;
    v147 = (v134[6] + 16 * v140);
    *v147 = v136;
    v147[1] = v138;
    *(v134[7] + 4 * v140) = v129;
    v148 = v134[2];
    v30 = __OFADD__(v148, 1);
    v149 = v148 + 1;
    if (v30)
    {
      goto LABEL_126;
    }

    v127 = v138;
    v134[2] = v149;

LABEL_90:
    v128 = v136;
    goto LABEL_91;
  }

  sub_255EACFB8(v143, v135);
  v145 = sub_255EACAD4(v136, v138);
  if ((v144 & 1) == (v146 & 1))
  {
    v140 = v145;
    v134 = v164;
    if ((v144 & 1) == 0)
    {
      goto LABEL_100;
    }

LABEL_89:
    *(v134[7] + 4 * v140) = v129;
    v127 = v138;
    goto LABEL_90;
  }

  sub_255ECF598();
}

uint64_t sub_255EA81E8()
{
  v1 = v0[47];
  v2 = v1;
  v3 = sub_255ECF178();
  v4 = sub_255ECF408();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_255EA2000, v3, v4, "Got an error with prediction: %@", v5, 0xCu);
    sub_255EB1E28(v6, &qword_27F815978, &qword_255ECFBD8);
    MEMORY[0x259C511E0](v6, -1, -1);
    MEMORY[0x259C511E0](v5, -1, -1);
  }

  v9 = v3;
  v10 = v0[42];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[27];
  v14 = v0[23];
  v15 = v0[18];

  v19 = sub_255EAF9C0(MEMORY[0x277D84F90]);
  sub_255EB1E28(v14, &qword_27F815958, &qword_255ECFBC0);
  v10(v12, v13);
  v10(v11, v13);
  sub_255EAFF7C(v15);

  v16 = v0[1];
  v17 = MEMORY[0x277D84F90];

  return v16(v19, v17);
}

uint64_t sub_255EA8444()
{
  v1 = v0[51];
  v2 = v1;
  v3 = sub_255ECF178();
  v4 = sub_255ECF408();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_255EA2000, v3, v4, "Got an error with prediction: %@", v5, 0xCu);
    sub_255EB1E28(v6, &qword_27F815978, &qword_255ECFBD8);
    MEMORY[0x259C511E0](v6, -1, -1);
    MEMORY[0x259C511E0](v5, -1, -1);
  }

  v9 = v3;
  v10 = v0[42];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[27];
  v14 = v0[23];
  v15 = v0[18];

  v19 = sub_255EAF9C0(MEMORY[0x277D84F90]);
  sub_255EB1E28(v14, &qword_27F815958, &qword_255ECFBC0);
  v10(v12, v13);
  v10(v11, v13);
  sub_255EAFF7C(v15);

  v16 = v0[1];
  v17 = MEMORY[0x277D84F90];

  return v16(v19, v17);
}

uint64_t AVBiomeEventSummary.toModelInput()()
{
  v1[62] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815980, &qword_255ECFBE0);
  v1[63] = swift_task_alloc();
  v2 = sub_255ECF1B8();
  v1[64] = v2;
  v1[65] = *(v2 - 8);
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815988, &qword_255ECFBE8);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255EA87E8, 0, 0);
}

uint64_t sub_255EA87E8()
{
  v1 = v0[62];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815990, &qword_255ECFBF0);
  inited = swift_initStackObject();
  v0[70] = inited;
  *(inited + 16) = xmmword_255ECFB50;
  *(inited + 32) = 0x655F726F68636E61;
  *(inited + 40) = 0xEA0000000000766ELL;
  v0[71] = sub_255EB1C64();
  v0[72] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159A0, &qword_255ECFBF8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_255ECFB60;
  *(v3 + 32) = *(v1 + 8);
  v0[54] = v3;
  v0[73] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159A8, &qword_255ECFC00);
  v0[74] = sub_255EB2624(&qword_27F8159B0, &qword_27F8159A8, &qword_255ECFC00, MEMORY[0x277D83988]);
  sub_255ECF1C8();
  v4 = swift_task_alloc();
  v0[75] = v4;
  *v4 = v0;
  v4[1] = sub_255EA89A4;
  v5 = v0[69];
  v6 = MEMORY[0x277D83A90];
  v7 = MEMORY[0x277CBFDD8];
  v8 = MEMORY[0x277CBFDC8];
  v9 = MEMORY[0x277D83A90];

  return MEMORY[0x2821118D0](v5, v6, v9, v7, v8);
}

uint64_t sub_255EA89A4()
{
  v1 = *v0;
  v2 = *(*v0 + 536);
  v3 = *(*v0 + 520);
  v4 = *(*v0 + 512);

  v5 = *(v3 + 8);
  *(v1 + 608) = v5;
  *(v1 + 616) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_255EA8B0C, 0, 0);
}

uint64_t sub_255EA8B0C()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[62];
  v4 = MEMORY[0x277D83A90];
  v5 = MEMORY[0x277CBFDD8];
  *(v2 + 48) = sub_255ECF418();
  *(v2 + 72) = v1;
  strcpy((v2 + 80), "anchor_volume");
  *(v2 + 94) = -4864;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255ECFB60;
  *(v6 + 32) = *(v3 + 12);
  v0[55] = v6;
  sub_255ECF1C8();
  v7 = swift_task_alloc();
  v0[78] = v7;
  *v7 = v0;
  v7[1] = sub_255EA8C80;
  v8 = v0[69];
  v9 = MEMORY[0x277CBFDC8];

  return MEMORY[0x2821118D0](v8, v4, v4, v5, v9);
}

uint64_t sub_255EA8C80()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 536);
  v3 = *(*v0 + 512);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_255EA8DE0, 0, 0);
}

uint64_t sub_255EA8DE0()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[62];
  v4 = MEMORY[0x277D83A90];
  v5 = MEMORY[0x277CBFDD8];
  v2[12] = sub_255ECF418();
  v2[15] = v1;
  v2[16] = 0x6C70735F766E65;
  v2[17] = 0xE700000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255ECFB60;
  *(v6 + 32) = *v3;
  v0[56] = v6;
  sub_255ECF1C8();
  v7 = swift_task_alloc();
  v0[79] = v7;
  *v7 = v0;
  v7[1] = sub_255EA8F48;
  v8 = v0[69];
  v9 = MEMORY[0x277CBFDC8];

  return MEMORY[0x2821118D0](v8, v4, v4, v5, v9);
}

uint64_t sub_255EA8F48()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 536);
  v3 = *(*v0 + 512);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_255EA90A8, 0, 0);
}

uint64_t sub_255EA90A8()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[62];
  v4 = MEMORY[0x277D83A90];
  v5 = MEMORY[0x277CBFDD8];
  v2[18] = sub_255ECF418();
  v2[21] = v1;
  v2[22] = 0x6666656F6370;
  v2[23] = 0xE600000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255ECFB60;
  *(v6 + 32) = *(v3 + 4);
  v0[57] = v6;
  sub_255ECF1C8();
  v7 = swift_task_alloc();
  v0[80] = v7;
  *v7 = v0;
  v7[1] = sub_255EA920C;
  v8 = v0[69];
  v9 = MEMORY[0x277CBFDC8];

  return MEMORY[0x2821118D0](v8, v4, v4, v5, v9);
}

uint64_t sub_255EA920C()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 536);
  v3 = *(*v0 + 512);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_255EA936C, 0, 0);
}

uint64_t sub_255EA936C()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[62];
  v4 = MEMORY[0x277D83A90];
  v5 = MEMORY[0x277CBFDD8];
  v2[24] = sub_255ECF418();
  v2[27] = v1;
  v2[28] = 0x656D756C6F76;
  v2[29] = 0xE600000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255ECFB60;
  *(v6 + 32) = *(v3 + 20);
  v0[58] = v6;
  sub_255ECF1C8();
  v7 = swift_task_alloc();
  v0[81] = v7;
  *v7 = v0;
  v7[1] = sub_255EA94D4;
  v8 = v0[69];
  v9 = MEMORY[0x277CBFDC8];

  return MEMORY[0x2821118D0](v8, v4, v4, v5, v9);
}

uint64_t sub_255EA94D4()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 536);
  v3 = *(*v0 + 512);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_255EA9634, 0, 0);
}

uint64_t sub_255EA9634()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[62];
  v4 = MEMORY[0x277D83A90];
  v5 = MEMORY[0x277CBFDD8];
  *(v2 + 240) = sub_255ECF418();
  *(v2 + 264) = v1;
  strcpy((v2 + 272), "is_single_bud");
  *(v2 + 286) = -4864;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255ECFB60;
  v7 = 0.0;
  if (*(v3 + 24))
  {
    v7 = 1.0;
  }

  *(v6 + 32) = v7;
  v0[59] = v6;
  sub_255ECF1C8();
  v8 = swift_task_alloc();
  v0[82] = v8;
  *v8 = v0;
  v8[1] = sub_255EA97B8;
  v9 = v0[68];
  v10 = MEMORY[0x277CBFDC8];

  return MEMORY[0x2821118D0](v9, v4, v4, v5, v10);
}

uint64_t sub_255EA97B8()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 528);
  v3 = *(*v0 + 512);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_255EA9918, 0, 0);
}

uint64_t sub_255EA9918()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[62];
  *(v2 + 288) = sub_255ECF418();
  *(v2 + 312) = v1;
  strcpy((v2 + 320), "headphone_mode");
  *(v2 + 335) = -18;
  v0[83] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159B8, &qword_255ECFC08);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255ECFB60;
  *(v4 + 32) = *(v3 + 25);
  v0[60] = v4;
  v0[84] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159C0, &unk_255ECFC10);
  v0[85] = sub_255EB2624(&qword_27F8159C8, &qword_27F8159C0, &unk_255ECFC10, MEMORY[0x277D83988]);
  sub_255ECF1D8();
  v5 = swift_task_alloc();
  v0[86] = v5;
  *v5 = v0;
  v5[1] = sub_255EA9ACC;
  v6 = v0[63];
  v7 = MEMORY[0x277D849A8];
  v8 = MEMORY[0x277CBFE38];
  v9 = MEMORY[0x277CBFE30];
  v10 = MEMORY[0x277D849A8];

  return MEMORY[0x2821118D0](v6, v7, v10, v8, v9);
}

uint64_t sub_255EA9ACC()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 536);
  v3 = *(*v0 + 512);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_255EA9C2C, 0, 0);
}

uint64_t sub_255EA9C2C()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[62];
  v4 = MEMORY[0x277D849A8];
  v5 = MEMORY[0x277CBFE38];
  v2[42] = sub_255ECF418();
  v2[45] = v1;
  v2[46] = 0x745F6D6165727473;
  v2[47] = 0xEB00000000657079;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255ECFB60;
  *(v6 + 32) = *(v3 + 26);
  v0[61] = v6;
  sub_255ECF1D8();
  v7 = swift_task_alloc();
  v0[87] = v7;
  *v7 = v0;
  v7[1] = sub_255EA9D98;
  v8 = v0[63];
  v9 = MEMORY[0x277CBFE30];

  return MEMORY[0x2821118D0](v8, v4, v4, v5, v9);
}

uint64_t sub_255EA9D98()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 536);
  v3 = *(*v0 + 512);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_255EA9EF8, 0, 0);
}

uint64_t sub_255EA9EF8()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = sub_255ECF418();
  *(v2 + 408) = v1;
  *(v2 + 384) = v3;
  v4 = sub_255EAF890(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D0, &qword_255ECFFE0);
  swift_arrayDestroy();
  v5 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v6 = sub_255EAC1E4(v4);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_255EAA038(uint64_t a1)
{
  v2 = sub_255ECF468();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_255EAF840(v2, *(a1 + 36), 0, a1);
}

uint64_t sub_255EAA0A0@<X0>(uint64_t a1@<X8>)
{
  v139 = a1;
  v165 = *MEMORY[0x277D85DE8];
  v1 = sub_255ECEBA8();
  v146 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v157 = v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_255ECF078();
  v107 = *(v148 - 8);
  v143 = v107;
  MEMORY[0x28223BE20](v148);
  v161 = v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D8, &qword_255ECFC20);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v144 = v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v147 = v106 - v7;
  v8 = sub_255ECEE68();
  MEMORY[0x28223BE20](v8 - 8);
  v155 = v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_255ECEE88();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_255ECEEF8();
  MEMORY[0x28223BE20](v11 - 8);
  v151 = v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_255ECEF18();
  MEMORY[0x28223BE20](v13 - 8);
  v150 = v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159E0, &qword_255ECFC28);
  MEMORY[0x28223BE20](v15 - 8);
  *&v149 = v106 - v16;
  v17 = sub_255ECEDB8();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_255ECECD8();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v136 = v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_255ECECF8();
  v137 = *(v140 - 1);
  MEMORY[0x28223BE20](v140);
  v134 = v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_255ECECC8();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_255ECECA8();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_255ECEBE8();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v121 = v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_255ECEC18();
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v117 = v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_255ECEC28();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v116 = v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_255ECEC68();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_255ECEC48();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_255ECEC88();
  v29 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v31 = v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_255ECED98();
  MEMORY[0x28223BE20](v32 - 8);
  v127 = sub_255ECEDD8();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_255ECF138();
  v34 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v36 = v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_255ECF0D8();
  v135 = *(v159 - 8);
  v37 = MEMORY[0x28223BE20](v159);
  v156 = v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v160 = v106 - v39;
  v40 = [objc_opt_self() defaultManager];
  v41 = sub_255ECEB98();
  v163 = 0;
  v138 = v40;
  v42 = [v40 contentsOfDirectoryAtURL:v41 includingPropertiesForKeys:0 options:0 error:&v163];

  v43 = v163;
  if (v42)
  {
    v145 = v1;
    v158 = sub_255ECF378();
    v44 = v43;

    sub_255EB1CB0(&unk_2867F8FF8);
    v106[1] = v19;
    swift_arrayDestroy();
    sub_255EB1CB0(&unk_2867F90B8);
    swift_arrayDestroy();
    sub_255EB1CB0(&unk_2867F9118);
    swift_arrayDestroy();
    (*(v34 + 104))(v36, *MEMORY[0x277CE1918], v108);
    v45 = v160;
    sub_255ECF0B8();
    sub_255ECED88();
    sub_255ECED78();
    sub_255ECEC78();
    sub_255ECED38();
    (*(v29 + 8))(v31, v109);
    sub_255ECED78();
    v46 = v110;
    sub_255ECEC38();
    sub_255ECED08();
    (*(v111 + 8))(v46, v112);
    sub_255ECED78();
    v47 = v113;
    sub_255ECEC58();
    sub_255ECED28();
    (*(v114 + 8))(v47, v115);
    sub_255ECED78();
    v48 = v117;
    sub_255ECEBD8();
    v49 = v121;
    sub_255ECEBD8();
    v50 = v116;
    sub_255ECEBF8();
    (*(v123 + 8))(v49, v124);
    (*(v120 + 8))(v48, v122);
    sub_255ECED18();
    (*(v118 + 8))(v50, v119);
    sub_255ECED78();
    v51 = v128;
    sub_255ECEC98();
    sub_255ECED48();
    (*(v129 + 8))(v51, v130);
    sub_255ECED78();
    v52 = v131;
    sub_255ECEC98();
    sub_255ECED58();
    (*(v132 + 8))(v52, v133);
    sub_255ECED78();
    v53 = v141;
    v54 = v136;
    v55 = v142;
    (*(v141 + 104))(v136, *MEMORY[0x277CC9408], v142);
    v56 = v134;
    sub_255ECECE8();
    (*(v53 + 8))(v54, v55);
    sub_255ECED68();
    v137[1](v56, v140);
    sub_255ECED78();
    sub_255ECEDA8();
    v57 = sub_255ECEE78();
    (*(*(v57 - 8) + 56))(v149, 1, 1, v57);
    sub_255ECEF08();
    v58 = v153;
    v59 = v152;
    v60 = v154;
    (*(v153 + 104))(v152, *MEMORY[0x277CC9830], v154);
    sub_255ECEE98();
    (*(v58 + 8))(v59, v60);
    sub_255ECEE38();
    v61 = v125;
    sub_255ECEDC8();
    sub_255EB27A8(&qword_27F8159F0, MEMORY[0x277CC9440], MEMORY[0x277CC9438]);
    v62 = v127;
    v63 = v45;
    sub_255ECF0C8();
    (*(v126 + 8))(v61, v62);
    v163 = MEMORY[0x277D84F90];
    sub_255EADBD8(0, 36, 0);
    v64 = 0;
    v65 = v163;
    v66 = v148;
    v67 = v146;
    v68 = v147;
    v69 = v138;
    do
    {
      v70 = sub_255EB29D0(byte_2867F8F18[v64 + 32]);
      v163 = v65;
      v73 = v65[2];
      v72 = v65[3];
      if (v73 >= v72 >> 1)
      {
        v75 = v70;
        v76 = v69;
        v77 = v71;
        sub_255EADBD8((v72 > 1), v73 + 1, 1);
        v71 = v77;
        v69 = v76;
        v68 = v147;
        v70 = v75;
        v63 = v160;
        v65 = v163;
      }

      ++v64;
      v65[2] = v73 + 1;
      v74 = &v65[2 * v73];
      v74[4] = v70;
      v74[5] = v71;
    }

    while (v64 != 36);
    v78 = v143 + 56;
    v140 = *(v143 + 56);
    v140(v68, 1, 1, v66);
    v79 = v158;
    v80 = v139;
    v155 = *(v158 + 16);
    if (v155)
    {
      v143 = v78;
      v81 = 0;
      v82 = 0;
      v154 = v158 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v153 = v67 + 16;
      v152 = (v135 + 16);
      v150 = 0x8000000255ED0AE0;
      v141 = v107 + 48;
      v137 = (v107 + 8);
      v136 = (v107 + 32);
      v142 = (v65 + 5);
      v149 = xmmword_255ECFB60;
      v83 = v145;
      do
      {
        if (v81 >= *(v79 + 16))
        {
          goto LABEL_28;
        }

        (*(v67 + 16))(v157, v154 + *(v67 + 72) * v81, v83);
        (*v152)(v156, v63, v159);
        sub_255ECEF88();
        if (v82)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159E8, &qword_255ECFC30);
          v84 = swift_allocObject();
          *(v84 + 16) = v149;
          v163 = 0;
          v164 = 0xE000000000000000;
          sub_255ECF4D8();

          v163 = 0xD00000000000001BLL;
          v164 = v150;
          swift_getErrorValue();
          v85 = sub_255ECF5A8();
          MEMORY[0x259C50A70](v85);

          v86 = v163;
          v87 = v164;
          *(v84 + 56) = MEMORY[0x277D837D0];
          *(v84 + 32) = v86;
          *(v84 + 40) = v87;
          sub_255ECF5B8();
          v63 = v160;

          v82 = 0;
          v79 = v158;
          goto LABEL_9;
        }

        v88 = *(sub_255ECF058() + 16);

        if (!v88)
        {
          goto LABEL_29;
        }

        v89 = 0;
        v90 = v142;
        do
        {
          v163 = 0x206E6D756C6F43;
          v164 = 0xE700000000000000;
          v162 = v89;
          v91 = sub_255ECF578();
          MEMORY[0x259C50A70](v91);

          if (v89 >= v65[2])
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
          }

          sub_255ECEF68();

          ++v89;
          v90 += 16;
        }

        while (v88 != v89);
        v151 = 0;
        v92 = v147;
        v93 = v144;
        sub_255EB27F8(v147, v144, &qword_27F8159D8, &qword_255ECFC20);
        v94 = *v141;
        v95 = v148;
        v96 = (*v141)(v93, 1, v148);
        sub_255EB1E28(v93, &qword_27F8159D8, &qword_255ECFC20);
        if (v96 == 1)
        {
          sub_255EB1E28(v92, &qword_27F8159D8, &qword_255ECFC20);
          (*v136)(v92, v161, v95);
          v140(v92, 0, 1, v95);
          v83 = v145;
          v67 = v146;
          v63 = v160;
          v79 = v158;
        }

        else
        {
          v97 = v94(v92, 1, v95);
          v83 = v145;
          v67 = v146;
          v79 = v158;
          if (v97)
          {
            (*v137)(v161, v95);
          }

          else
          {
            v98 = v161;
            sub_255ECF038();
            (*v137)(v98, v95);
          }

          v63 = v160;
        }

        v82 = v151;
LABEL_9:
        ++v81;
      }

      while (v81 != v155);

      v68 = v147;
      v69 = v138;
      v80 = v139;
    }

    else
    {
    }

    (*(v135 + 8))(v63, v159);
    return sub_255EB2860(v68, v80, &qword_27F8159D8, &qword_255ECFC20);
  }

  else
  {
    v99 = v163;
    v100 = sub_255ECEB88();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159E8, &qword_255ECFC30);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_255ECFB60;
    v163 = 0;
    v164 = 0xE000000000000000;
    sub_255ECF4D8();

    v163 = 0xD00000000000001CLL;
    v164 = 0x8000000255ED0AC0;
    swift_getErrorValue();
    v102 = sub_255ECF5A8();
    MEMORY[0x259C50A70](v102);

    v103 = v163;
    v104 = v164;
    *(v101 + 56) = MEMORY[0x277D837D0];
    *(v101 + 32) = v103;
    *(v101 + 40) = v104;
    sub_255ECF5B8();

    return (*(v143 + 56))(v139, 1, 1, v148);
  }
}

BOOL sub_255EAB918(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = sub_255EB29D0(*v4);
    v9 = v8;
    if (v7 == sub_255EB29D0(v2) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_255ECF588();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_255EAB9DC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_255ECEE68();
    ++v2;
    sub_255EB27A8(&qword_27F815A58, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  }

  while ((sub_255ECF248() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_255EABAE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_255EADBF8(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_255EAF798(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_255EADBF8((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_255EABBF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_255EADBD8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_255EAF798(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_255EADBD8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_255EABD08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_255ECEE68();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v23 = &v21 - v10;
  v11 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  sub_255EADBB8(0, v11, 0);
  v12 = v25;
  if (v11)
  {
    v13 = a1 + 32;
    v21 = v4;
    v22 = (v6 + 56);
    v14 = (v6 + 32);
    while (1)
    {
      sub_255EAF798(v13, v24);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v22)(v4, 0, 1, v5);
      v15 = *v14;
      v16 = v23;
      (*v14)(v23, v4, v5);
      v15(v9, v16, v5);
      v25 = v12;
      v17 = v9;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_255EADBB8((v18 > 1), v19 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v19 + 1;
      v15((v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19), v17, v5);
      v13 += 32;
      --v11;
      v9 = v17;
      v4 = v21;
      if (!v11)
      {
        return v12;
      }
    }

    (*v22)(v4, 1, 1, v5);
    sub_255EB1E28(v4, &qword_27F815960, &qword_255ECFBC8);
    return 0;
  }

  return v12;
}

uint64_t sub_255EABFDC()
{
  v1 = 0x434E416F747541;
  v2 = 4410945;
  if (*v0 != 2)
  {
    v2 = 0x726170736E617254;
  }

  if (*v0)
  {
    v1 = 0x737361707942;
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

uint64_t sub_255EAC06C()
{
  sub_255ECF5C8();
  sub_255ECF5E8();
  return sub_255ECF5F8();
}

uint64_t sub_255EAC0E4(uint64_t a1)
{
  sub_255ECF5C8();
  sub_255ECF5E8();
  return sub_255ECF5F8();
}

uint64_t sub_255EAC128@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255EAFEC4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_255EAC170()
{
  v1 = 0x616964654DLL;
  v2 = 1769105747;
  if (*v0 != 2)
  {
    v2 = 0x64696C61766E49;
  }

  if (*v0)
  {
    v1 = 0x6E6F6870656C6554;
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

id sub_255EAC1E4(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_255ECF1E8();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_255ECEB88();

    swift_willThrow();
  }

  return v3;
}

char *sub_255EAC2CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159E8, &qword_255ECFC30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_255EAC3DC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AC8, &qword_255ECFF58);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AB8, &qword_255ECFF48) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AB8, &qword_255ECFF48) - 8);
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

char *sub_255EAC5CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AA8, &qword_255ECFF38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_255EAC748(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A70, &qword_255ECFF08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_255EAC874(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_255EACA50(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A70, &qword_255ECFF08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

unint64_t sub_255EACAD4(uint64_t a1, uint64_t a2)
{
  sub_255ECF5C8();
  sub_255ECF2C8();
  v4 = sub_255ECF5F8();

  return sub_255EACB90(a1, a2, v4);
}

unint64_t sub_255EACB4C(uint64_t a1)
{
  v2 = sub_255ECF478();

  return sub_255EACC48(a1, v2);
}

unint64_t sub_255EACB90(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_255ECF588())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_255EACC48(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_255EB292C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C50C10](v9, a1);
      sub_255EB28C8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_255EACD10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AD0, &unk_255ECFF60);
  v34 = v4;
  result = sub_255ECF518();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_255ECF5C8();
      sub_255ECF2C8();
      result = sub_255ECF5F8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_255EACFB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AB0, &qword_255ECFF40);
  v33 = v4;
  result = sub_255ECF518();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_255ECF5C8();
      sub_255ECF2C8();
      result = sub_255ECF5F8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_255EAD2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v49 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v43 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v47 = v10;
  result = sub_255ECF518();
  v15 = result;
  if (*(v13 + 16))
  {
    v44 = v6;
    v45 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v46 + 72);
      v34 = v29 + v33 * v28;
      if (v47)
      {
        sub_255EB272C(v34, v48, v49);
      }

      else
      {
        sub_255EB26C4(v34, v48, v49);
      }

      sub_255ECF5C8();
      sub_255ECF2C8();
      result = sub_255ECF5F8();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      result = sub_255EB272C(v48, *(v15 + 56) + v33 * v23, v49);
      ++*(v15 + 16);
      v13 = v45;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v9 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

void *sub_255EAD614()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AD0, &unk_255ECFF60);
  v2 = *v0;
  v3 = sub_255ECF508();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_255EAD784()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AB0, &qword_255ECFF40);
  v2 = *v0;
  v3 = sub_255ECF508();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_255EAD964(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v41 = a4;
  v7 = v4;
  v8 = a1(0);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v38 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_255ECF508();
  v12 = v11;
  if (*(v10 + 16))
  {
    v38 = v7;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v42 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = v10;
        v31 = *v29;
        v32 = v29[1];
        v33 = v39;
        v34 = *(v40 + 72) * v26;
        v35 = v41;
        sub_255EB26C4(v28 + v34, v39, v41);
        v36 = v42;
        v37 = (*(v42 + 48) + v27);
        *v37 = v31;
        v37[1] = v32;
        v10 = v30;
        sub_255EB272C(v33, *(v36 + 56) + v34, v35);

        v21 = v43;
      }

      while (v43);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v12 = v42;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v43 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

void *sub_255EADBB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255EADC38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255EADBD8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255EADE10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255EADBF8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255EADF1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_255EADC18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255EAE020(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_255EADC38(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A50, &qword_255ECFEF0);
  v10 = *(sub_255ECEE68() - 8);
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
  v15 = *(sub_255ECEE68() - 8);
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

char *sub_255EADE10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A78, &qword_255ECFF10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_255EADF1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A70, &qword_255ECFF08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_255EAE020(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AC0, &qword_255ECFF50);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815958, &qword_255ECFBC0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815958, &qword_255ECFBC0) - 8);
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

void *sub_255EAE210(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A98, &qword_255ECFF30);
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v4 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v4);
  if (v2)
  {
    if ((result - v3) != 0x8000000000000000 || v2 != -1)
    {
      v4[3] = 0;
      v4[4] = 0;
      v4[2] = (result - v3) / v2;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_255EAE2F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A90, &qword_255ECFF28);
  v1 = *(type metadata accessor for AVBiomeEventSummary(0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v4 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v4);
  if (v2)
  {
    if ((result - v3) != 0x8000000000000000 || v2 != -1)
    {
      v4[3] = 0;
      v4[4] = 0;
      v4[2] = (result - v3) / v2;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255EAE3D4()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A98, &qword_255ECFF30);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_255EAF250(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

uint64_t sub_255EAE4D8()
{
  v1 = *v0;
  v2 = type metadata accessor for AVBiomeEventSummary(0);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A90, &qword_255ECFF28);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_255EAF3B8(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

size_t sub_255EAE5D0(char a1, uint64_t a2, char a3)
{
  v6 = *v3;
  v7 = (*v3 + 16);
  v8 = *v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  v10 = v9;
  if (v8 >= a2)
  {
    v19 = *(*(v9 - 8) + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A98, &qword_255ECFF30);
    v16 = swift_allocObject();
    v20 = *(v6 + 24);
    *(v16 + 16) = v8;
    *(v16 + 24) = v20;
    if (v20 >= 1)
    {
      sub_255EAF250(v16 + 16, v16 + ((v19 + 40) & ~v19), v7, v6 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_255ECF168();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  if (a1)
  {
    v13 = *(v6 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A98, &qword_255ECFF30);
    v14 = *(v11 + 72);
    v15 = (v12 + 40) & ~v12;
    v16 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v16);
    if (v14)
    {
      if (result - v15 != 0x8000000000000000 || v14 != -1)
      {
        *(v16 + 16) = (result - v15) / v14;
        *(v16 + 24) = v13;
        *(v16 + 32) = 0;
        if (v13 >= 1)
        {
          sub_255EAEC18(v16 + 16, v16 + v15, v7, v6 + v15);
          *(v6 + 24) = 0;
        }

LABEL_19:

        *v3 = v16;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A98, &qword_255ECFF30);
  v21 = *(v11 + 72);
  v22 = (v12 + 40) & ~v12;
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (!v21)
  {
    goto LABEL_21;
  }

  if (result - v22 != 0x8000000000000000 || v21 != -1)
  {
    v24 = *(v6 + 24);
    *(v16 + 16) = (result - v22) / v21;
    *(v16 + 24) = v24;
    *(v16 + 32) = 0;
    if (v24 >= 1)
    {
      sub_255EAEFB8(v16 + 16, v16 + v22, v7, v6 + v22);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

size_t sub_255EAE84C(char a1, uint64_t a2, char a3)
{
  v6 = *v3;
  v7 = (*v3 + 16);
  v8 = *v7;
  v9 = type metadata accessor for AVBiomeEventSummary(0);
  v10 = v9;
  if (v8 >= a2)
  {
    v19 = *(*(v9 - 8) + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A90, &qword_255ECFF28);
    v16 = swift_allocObject();
    v20 = *(v6 + 24);
    *(v16 + 16) = v8;
    *(v16 + 24) = v20;
    if (v20 >= 1)
    {
      sub_255EAF3B8(v16 + 16, v16 + ((v19 + 40) & ~v19), v7, v6 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_255ECF168();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  if (a1)
  {
    v13 = *(v6 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A90, &qword_255ECFF28);
    v14 = *(v11 + 72);
    v15 = (v12 + 40) & ~v12;
    v16 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v16);
    if (v14)
    {
      if (result - v15 != 0x8000000000000000 || v14 != -1)
      {
        *(v16 + 16) = (result - v15) / v14;
        *(v16 + 24) = v13;
        *(v16 + 32) = 0;
        if (v13 >= 1)
        {
          sub_255EAEE24(v16 + 16, v16 + v15, v7, v6 + v15);
          *(v6 + 24) = 0;
        }

LABEL_19:

        *v3 = v16;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A90, &qword_255ECFF28);
  v21 = *(v11 + 72);
  v22 = (v12 + 40) & ~v12;
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (!v21)
  {
    goto LABEL_21;
  }

  if (result - v22 != 0x8000000000000000 || v21 != -1)
  {
    v24 = *(v6 + 24);
    *(v16 + 16) = (result - v22) / v21;
    *(v16 + 24) = v24;
    *(v16 + 32) = 0;
    if (v24 >= 1)
    {
      sub_255EAF12C(v16 + 16, v16 + v22, v7, v6 + v22);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_255EAEABC(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_255EACAD4(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_255EACFB8(v16, a3 & 1);
      result = sub_255EACAD4(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_255ECF598();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_255EAD784();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 4 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_255EAEC18(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[1];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = a4 + *(v9 + 72) * v4;
  if (v15 > a2 || v15 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8) - 8) + 72) * v11 <= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v15 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 >= v8)
  {
    return;
  }

LABEL_23:
  if (v10 < 1)
  {
    return;
  }

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8) - 8) + 72);
  v17 = a2 + v16 * v11;
  v18 = v14 + v16 * v10;
  if (v17 < v14 || v17 >= v18)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v17 != v14)
  {
    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_255EAEE24(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_37;
  }

  v8 = a3[1];
  v9 = *(type metadata accessor for AVBiomeEventSummary(0) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v9 + 72);
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v16 = a4 + v14 * v4;
  if (v16 <= a2 && v16 + v14 * v11 > a2)
  {
    if (v16 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    swift_arrayInitWithTakeFrontToBack();
  }

LABEL_22:
  if (v5 < v8 && v10 >= 1)
  {
    if (v15)
    {
      v19 = a2 + v14 * v11;
      if (v19 < v15 || v19 >= v15 + v14 * v10)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v19 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return;
    }

LABEL_39:
    __break(1u);
  }
}

void sub_255EAEFB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v8 = 0;
  if (v7 < 1)
  {
LABEL_5:
    if (v5 >= v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (!a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  swift_arrayInitWithCopy();
  if (v5 >= v7)
  {
    return;
  }

LABEL_10:
  if (v8 < 1)
  {
    return;
  }

  if (!v9)
  {
LABEL_17:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  swift_arrayInitWithCopy();
}

void sub_255EAF12C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for AVBiomeEventSummary(0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_255EAF250(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

LABEL_7:
      if (a4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
        swift_arrayInitWithCopy();
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v8 = 0;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_17:
    __break(1u);
  }
}

void sub_255EAF3B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for AVBiomeEventSummary(0);
  if (v5 >= v7)
  {
    v9 = 0;
    v8 = 0;
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v9)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_255EAF4D0()
{
  v1 = *v0;
  v3 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v6 = __OFADD__(v2, v3);
  v4 = v2 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 0)
  {
LABEL_7:
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 16);
    v6 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 16);
  v6 = __OFSUB__(v4, v5);
  v1 = v4 - v5;
  if (v1 < 0 == v6)
  {
    v4 = v1;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4 || v4 == v0[1])
  {
    return 0;
  }

  v0[1] = 0;
  v0[2] = v4;
  return 1;
}

uint64_t sub_255EAF538(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_255EAF5DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AD0, &unk_255ECFF60);
    v3 = sub_255ECF528();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_255EACAD4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_255EAF798(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_255EAF840(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_255EAF890(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A88, &qword_255ECFF20);
    v3 = sub_255ECF528();
    v4 = a1 + 32;

    while (1)
    {
      sub_255EB27F8(v4, &v13, &qword_27F8159D0, &qword_255ECFFE0);
      v5 = v13;
      v6 = v14;
      result = sub_255EACAD4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_255EB2798(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_255EAF9C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AB0, &qword_255ECFF40);
    v3 = sub_255ECF528();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_255EACAD4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_255EAFAC4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &aBlock - v4;
  v6 = sub_255ECEE68();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = sub_255ECEE08();
  v9 = 0;
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v9 = sub_255ECEE08();
    (*(v7 + 8))(v5, v6);
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v8 endDate:v9 maxEvents:a2 lastN:0 reversed:0];

  v11 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v12 = [v11 Audio];
  swift_unknownObjectRelease();
  v13 = [v12 AdaptiveVolume];
  swift_unknownObjectRelease();
  v14 = sub_255ECF268();
  v15 = [v13 publisherWithUseCase:v14 options:v10];

  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x277D84F90];
  v27 = sub_255EA51D4;
  v28 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_255EB29BC;
  v26 = &block_descriptor_46;
  v17 = _Block_copy(&aBlock);
  v27 = sub_255EB27F0;
  v28 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_255EB29BC;
  v26 = &block_descriptor_49;
  v18 = _Block_copy(&aBlock);

  v19 = [v15 sinkWithCompletion:v17 receiveInput:v18];
  _Block_release(v18);
  _Block_release(v17);

  swift_beginAccess();

  v21 = sub_255EA5B1C(v20);

  return v21;
}

uint64_t type metadata accessor for AVBiomeEventSummary(uint64_t a1)
{
  result = qword_27F8159F8;
  if (!qword_27F8159F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255EAFEC4(uint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

unint64_t sub_255EAFED4()
{
  result = qword_27F815968;
  if (!qword_27F815968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815968);
  }

  return result;
}

unint64_t sub_255EAFF28()
{
  result = qword_27F815970;
  if (!qword_27F815970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815970);
  }

  return result;
}

uint64_t sub_255EAFF7C(uint64_t a1)
{
  v2 = type metadata accessor for AVBiomeEventSummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255EAFFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, float a6)
{
  if (a5)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x259C50A70](v10, v11);
  if (*(a1 + 16))
  {
    v12 = sub_255EACAD4(0x6F43656C706D6173, 0xEB00000000746E75);
    v14 = v13;

    v15 = 0.0;
    if (v14)
    {
      v15 = *(*(a1 + 56) + 4 * v12);
    }
  }

  else
  {

    v15 = 0.0;
  }

  MEMORY[0x259C50A70](v10, v11);
  if (*(a1 + 16))
  {
    v16 = sub_255EACAD4(1851876717, 0xE400000000000000);
    v18 = v17;

    v19 = 0.0;
    if (v18)
    {
      v19 = *(*(a1 + 56) + 4 * v16);
    }
  }

  else
  {

    v19 = 0.0;
  }

  MEMORY[0x259C50A70](v10, v11);
  if (*(a1 + 16))
  {
    v20 = sub_255EACAD4(0xD000000000000019, 0x8000000255ED0B60);
    v22 = v21;

    v23 = 0.0;
    if (v22)
    {
      v23 = *(*(a1 + 56) + 4 * v20);
    }
  }

  else
  {

    v23 = 0.0;
  }

  v24 = a6 - v19;
  v25 = v19 + ((a6 - v19) / (v15 + 1.0));
  v26 = (v24 * (a6 - v25)) + v23;

  MEMORY[0x259C50A70](a2, a3);

  MEMORY[0x259C50A70](v10, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_255EAEABC(0x6F43656C706D6173, 0xEB00000000746E75, isUniquelyReferenced_nonNull_native, v15 + 1.0);

  MEMORY[0x259C50A70](a2, a3);

  MEMORY[0x259C50A70](v10, v11);

  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_255EAEABC(1851876717, 0xE400000000000000, v28, v25);

  MEMORY[0x259C50A70](a2, a3);

  MEMORY[0x259C50A70](v10, v11);

  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_255EAEABC(0xD000000000000019, 0x8000000255ED0B60, v29, v26);

  if (v15 > 1.0)
  {
    MEMORY[0x259C50A70](a2, a3);

    MEMORY[0x259C50A70](v10, v11);

    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_255EAEABC(0x766544647473, 0xE600000000000000, v30, sqrtf(v26 / v15));
  }

  return a1;
}

uint64_t sub_255EB03FC(void *a1, void *a2, uint64_t a3, int a4, int a5, int a6)
{
  v61 = a6;
  v62 = a5;
  v60 = a4;
  v63 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v59[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v59[-v16];
  v18 = type metadata accessor for AVBiomeEventSummary(0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v59[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v59[-v23];
  MEMORY[0x28223BE20](v22);
  v27 = &v59[-v26];
  v28 = a1[3];
  if (!v28)
  {
    if (qword_27F815850 == -1)
    {
LABEL_16:
      v38 = sub_255ECF198();
      __swift_project_value_buffer(v38, qword_27F815858);
      v39 = sub_255ECF178();
      v40 = sub_255ECF408();
      v41 = os_log_type_enabled(v39, v40);
      v37 = v63;
      if (v41)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_255EA2000, v39, v40, "Couldn't find last value in inputBuffer, returning metrics unchanged", v42, 2u);
        MEMORY[0x259C511E0](v42, -1, -1);
      }

      goto LABEL_24;
    }

LABEL_56:
    swift_once();
    goto LABEL_16;
  }

  v29 = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v29 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v29 >= v28)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v30 = a1[4] + v29;
  v31 = a1[2];
  if (v30 < v31)
  {
    v31 = 0;
  }

  sub_255EB26C4(a1 + ((*(v25 + 80) + 40) & ~*(v25 + 80)) + (v30 - v31) * *(v25 + 72), v21, type metadata accessor for AVBiomeEventSummary);
  sub_255EB272C(v21, v24, type metadata accessor for AVBiomeEventSummary);
  sub_255EB272C(v24, v27, type metadata accessor for AVBiomeEventSummary);
  v32 = a2[3];
  if (!v32)
  {
    v37 = v63;
    if (qword_27F815850 != -1)
    {
      swift_once();
    }

    v43 = sub_255ECF198();
    __swift_project_value_buffer(v43, qword_27F815858);
    v44 = sub_255ECF178();
    v45 = sub_255ECF408();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_255EA2000, v44, v45, "Couldn't find last value in outputBuffer, returning metrics unchanged", v46, 2u);
      MEMORY[0x259C511E0](v46, -1, -1);
    }

    sub_255EAFF7C(v27);
    goto LABEL_24;
  }

  v33 = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    goto LABEL_53;
  }

  if (v33 < 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v33 >= v32)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v34 = a2[4] + v33;
  v35 = a2[2];
  if (v34 < v35)
  {
    v35 = 0;
  }

  sub_255EB27F8(a2 + ((*(v9 + 80) + 40) & ~*(v9 + 80)) + (v34 - v35) * *(v9 + 72), v12, &qword_27F815940, &qword_255ECFBA8);
  sub_255EB2860(v12, v15, &qword_27F815940, &qword_255ECFBA8);
  sub_255EB2860(v15, v17, &qword_27F815940, &qword_255ECFBA8);
  v36 = *&v27[*(v18 + 60)];
  if (v36 != 255)
  {
    v48 = *v17;
    v49 = v36 - v48;
    v50 = sub_255EAFFD8(v63, 0xD000000000000010, 0x8000000255ED0B80, 0, 0, v49);
    if (v60 <= 1u)
    {
      if (v60)
      {
        v51 = 0xE600000000000000;
        v52 = 0x35356F743534;
      }

      else
      {
        v51 = 0xE700000000000000;
        v52 = 0x3534776F6C6542;
      }
    }

    else
    {
      v51 = 0xE600000000000000;
      if (v60 == 2)
      {
        v52 = 0x35366F743535;
      }

      else if (v60 == 3)
      {
        v52 = 0x35376F743536;
      }

      else
      {
        v52 = 0x35377265764FLL;
      }
    }

    v53 = sub_255EAFFD8(v50, 0xD000000000000010, 0x8000000255ED0B80, v52, v51, v49);

    if (v61 > 1u)
    {
      if (v61 == 2)
      {
        v54 = 0xE300000000000000;
        v55 = 4410945;
      }

      else
      {
        v54 = 0xEC00000079636E65;
        v55 = 0x726170736E617254;
      }
    }

    else if (v61)
    {
      v54 = 0xE600000000000000;
      v55 = 0x737361707942;
    }

    else
    {
      v54 = 0xE700000000000000;
      v55 = 0x434E416F747541;
    }

    v37 = sub_255EAFFD8(v53, 0xD000000000000010, 0x8000000255ED0B80, v55, v54, v49);

    if (v62 > 1u)
    {
      if (v62 != 2)
      {
LABEL_49:
        sub_255EB1E28(v17, &qword_27F815940, &qword_255ECFBA8);
        sub_255EAFF7C(v27);
        return v37;
      }

      v56 = 0xE400000000000000;
      v57 = 1769105747;
    }

    else if (v62)
    {
      v56 = 0xE900000000000079;
      v57 = 0x6E6F6870656C6554;
    }

    else
    {
      v56 = 0xE500000000000000;
      v57 = 0x616964654DLL;
    }

    v58 = sub_255EAFFD8(v37, 0xD000000000000010, 0x8000000255ED0B80, v57, v56, v49);

    v37 = v58;
    goto LABEL_49;
  }

  sub_255EB1E28(v17, &qword_27F815940, &qword_255ECFBA8);
  sub_255EAFF7C(v27);
  v37 = v63;
LABEL_24:

  return v37;
}

uint64_t sub_255EB0B0C(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, int a6)
{
  v127 = a3;
  v133 = sub_255ECEE68();
  v135 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v134 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815950, &qword_255ECFBB8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v123 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v126 = &v115 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v121 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v128 = (&v115 - v21);
  MEMORY[0x28223BE20](v20);
  v125 = (&v115 - v22);
  v23 = type metadata accessor for AVBiomeEventSummary(0);
  v24 = MEMORY[0x28223BE20](v23);
  v25 = MEMORY[0x28223BE20](v24);
  v122 = &v115 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v132 = &v115 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v115 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v115 - v33;
  MEMORY[0x28223BE20](v32);
  v38 = &v115 - v37;
  v39 = a1;
  v40 = *(a1 + 24);
  if (!v40)
  {
    if (qword_27F815850 == -1)
    {
LABEL_22:
      v64 = sub_255ECF198();
      __swift_project_value_buffer(v64, qword_27F815858);
      v65 = sub_255ECF178();
      v66 = sub_255ECF408();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v127;
      if (v67)
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_255EA2000, v65, v66, "Couldn't find last value in inputBuffer, returning metrics unchanged", v69, 2u);
        MEMORY[0x259C511E0](v69, -1, -1);
      }

      goto LABEL_40;
    }

LABEL_75:
    swift_once();
    goto LABEL_22;
  }

  if (v40 < 1)
  {
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v116 = a4;
  v117 = a6;
  v118 = a5;
  v120 = v35;
  v41 = *(v36 + 80);
  v42 = v39;
  v43 = *(v39 + 32);
  v44 = *(v39 + 16);
  v119 = v44;
  if (v43 < v44)
  {
    v44 = 0;
  }

  v131 = (v41 + 40) & ~v41;
  v124 = v36;
  v130 = *(v36 + 72);
  sub_255EB26C4(v42 + v131 + (v43 - v44) * v130, v31, type metadata accessor for AVBiomeEventSummary);
  sub_255EB272C(v31, v34, type metadata accessor for AVBiomeEventSummary);
  sub_255EB272C(v34, v38, type metadata accessor for AVBiomeEventSummary);
  v45 = a2[3];
  if (!v45)
  {
    if (qword_27F815850 != -1)
    {
      swift_once();
    }

    v70 = sub_255ECF198();
    __swift_project_value_buffer(v70, qword_27F815858);
    v71 = sub_255ECF178();
    v72 = sub_255ECF408();
    v73 = os_log_type_enabled(v71, v72);
    v68 = v127;
    if (v73)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_255EA2000, v71, v72, "Couldn't find last value in outputBuffer, returning metrics unchanged", v74, 2u);
      MEMORY[0x259C511E0](v74, -1, -1);
    }

    goto LABEL_39;
  }

  if (v45 < 1)
  {
    goto LABEL_74;
  }

  v46 = a2[4];
  v47 = a2[2];
  if (v46 < v47)
  {
    v47 = 0;
  }

  v48 = a2 + ((*(v17 + 80) + 40) & ~*(v17 + 80)) + (v46 - v47) * *(v17 + 72);
  v49 = v121;
  sub_255EB27F8(v48, v121, &qword_27F815940, &qword_255ECFBA8);
  v50 = v128;
  sub_255EB2860(v49, v128, &qword_27F815940, &qword_255ECFBA8);
  sub_255EB2860(v50, v125, &qword_27F815940, &qword_255ECFBA8);
  v51 = *(v124 + 56);
  v121 = v124 + 56;
  v115 = v51;
  v51(v126, 1, 1, v23);
  if (v119 >= v43 + v40)
  {
    v52 = v43 + v40;
  }

  else
  {
    v52 = v119;
  }

  v136 = v42;
  v137 = v43;
  v138 = v52;
  v128 = (v135 + 8);

  v53 = v122;
  v129 = v23;
  v54 = v134;
  while (1)
  {
    if (v43 == v52)
    {
      v55 = sub_255EAF4D0();
      v56 = v136;
      if ((v55 & 1) == 0)
      {

        v75 = v126;
        goto LABEL_30;
      }
    }

    else
    {
      v56 = v136;
    }

    v57 = v137;
    v135 = ++v137;
    v58 = v132;
    sub_255EB26C4(v56 + v131 + v57 * v130, v132, type metadata accessor for AVBiomeEventSummary);
    sub_255EB272C(v58, v53, type metadata accessor for AVBiomeEventSummary);
    v59 = v38;
    sub_255ECEDF8();
    sub_255EB27A8(&qword_27F815AA0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v60 = v133;
    v61 = sub_255ECF238();
    v62 = *v128;
    (*v128)(v54, v60);
    if ((v61 & 1) == 0)
    {
      sub_255ECEDF8();
      v63 = sub_255ECF238();
      v62(v54, v60);
      if ((v63 & 1) == 0)
      {
        break;
      }
    }

    sub_255EAFF7C(v53);
    v52 = v138;
    v38 = v59;
    v23 = v129;
    v43 = v135;
  }

  v75 = v126;
  sub_255EB1E28(v126, &qword_27F815950, &qword_255ECFBB8);

  sub_255EB272C(v53, v75, type metadata accessor for AVBiomeEventSummary);
  v23 = v129;
  v115(v75, 0, 1, v129);
  v38 = v59;
LABEL_30:
  v76 = v123;
  sub_255EB27F8(v75, v123, &qword_27F815950, &qword_255ECFBB8);
  v77 = (*(v124 + 48))(v76, 1, v23);
  v68 = v127;
  v78 = v120;
  if (v77 == 1)
  {
    sub_255EB1E28(v76, &qword_27F815950, &qword_255ECFBB8);
    if (qword_27F815850 != -1)
    {
      swift_once();
    }

    v79 = sub_255ECF198();
    __swift_project_value_buffer(v79, qword_27F815858);
    v80 = sub_255ECF178();
    v81 = sub_255ECF408();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_255EA2000, v80, v81, "Couldn't find a sample 30 seconds after the first input, returning metrics unchanged", v82, 2u);
      MEMORY[0x259C511E0](v82, -1, -1);
    }

    goto LABEL_38;
  }

  result = sub_255EB272C(v76, v120, type metadata accessor for AVBiomeEventSummary);
  v84 = *&v38[*(v23 + 60)];
  if (v84 == 255)
  {
    sub_255EAFF7C(v78);
LABEL_38:
    sub_255EB1E28(v75, &qword_27F815950, &qword_255ECFBB8);
    sub_255EB1E28(v125, &qword_27F815940, &qword_255ECFBA8);
LABEL_39:
    sub_255EAFF7C(v38);
LABEL_40:

    return v68;
  }

  v85 = *(v78 + 20);
  if (v85 < 0)
  {
    __break(1u);
    goto LABEL_77;
  }

  v86 = __OFSUB__(v84, v85);
  v87 = v84 - v85;
  if (v86)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v88 = *v125;
  if ((*v125 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v88 <= -2147483650.0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v88 >= 2147483650.0)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v86 = __OFSUB__(v88, v85);
  v89 = v88 - v85;
  if (!v86)
  {
    v90 = v87 * v87;
    v91 = v89 * v89;
    sub_255EAFFD8(v68, 0xD000000000000015, 0x8000000255ED0B20, 0, 0, v90);

    v92 = sub_255EAFFD8(v68, 0xD000000000000013, 0x8000000255ED0B40, 0, 0, v91);
    v93 = v38;
    if (v116 <= 1u)
    {
      if (!v116)
      {
        v94 = 0x3534776F6C6542;
        v95 = 0xE700000000000000;
        v96 = v90;
        v97 = 0x3534776F6C6542;
        v98 = 0xE700000000000000;
        goto LABEL_58;
      }

      v94 = 0x35356F743534;
    }

    else if (v116 == 2)
    {
      v94 = 0x35366F743535;
    }

    else if (v116 == 3)
    {
      v94 = 0x35376F743536;
    }

    else
    {
      v94 = 0x35377265764FLL;
    }

    v95 = 0xE600000000000000;
    v96 = v90;
    v97 = v94;
    v98 = 0xE600000000000000;
LABEL_58:
    v99 = sub_255EAFFD8(v92, 0xD000000000000015, 0x8000000255ED0B20, v97, v98, v96);

    v100 = sub_255EAFFD8(v99, 0xD000000000000013, 0x8000000255ED0B40, v94, v95, v91);

    if (v117 > 1u)
    {
      if (v117 == 2)
      {
        v101 = 4410945;
        v102 = 0xE300000000000000;
        v103 = v100;
        v104 = v90;
        v105 = 4410945;
        v106 = 0xE300000000000000;
      }

      else
      {
        v101 = 0x726170736E617254;
        v102 = 0xEC00000079636E65;
        v103 = v100;
        v104 = v90;
        v105 = 0x726170736E617254;
        v106 = 0xEC00000079636E65;
      }
    }

    else if (v117)
    {
      v101 = 0x737361707942;
      v102 = 0xE600000000000000;
      v103 = v100;
      v104 = v90;
      v105 = 0x737361707942;
      v106 = 0xE600000000000000;
    }

    else
    {
      v101 = 0x434E416F747541;
      v102 = 0xE700000000000000;
      v103 = v100;
      v104 = v90;
      v105 = 0x434E416F747541;
      v106 = 0xE700000000000000;
    }

    v107 = sub_255EAFFD8(v103, 0xD000000000000015, 0x8000000255ED0B20, v105, v106, v104);

    v68 = sub_255EAFFD8(v107, 0xD000000000000013, 0x8000000255ED0B40, v101, v102, v91);

    if (v118 > 1u)
    {
      if (v118 != 2)
      {
LABEL_72:
        sub_255EAFF7C(v78);
        sub_255EB1E28(v126, &qword_27F815950, &qword_255ECFBB8);
        sub_255EB1E28(v125, &qword_27F815940, &qword_255ECFBA8);
        sub_255EAFF7C(v93);
        return v68;
      }

      v108 = 1769105747;
      v109 = 0xE400000000000000;
      v110 = v68;
      v111 = v90;
      v112 = 1769105747;
      v113 = 0xE400000000000000;
    }

    else if (v118)
    {
      v108 = 0x6E6F6870656C6554;
      v109 = 0xE900000000000079;
      v110 = v68;
      v111 = v90;
      v112 = 0x6E6F6870656C6554;
      v113 = 0xE900000000000079;
    }

    else
    {
      v108 = 0x616964654DLL;
      v109 = 0xE500000000000000;
      v110 = v68;
      v111 = v90;
      v112 = 0x616964654DLL;
      v113 = 0xE500000000000000;
    }

    v114 = sub_255EAFFD8(v110, 0xD000000000000015, 0x8000000255ED0B20, v112, v113, v111);

    v68 = sub_255EAFFD8(v114, 0xD000000000000013, 0x8000000255ED0B40, v108, v109, v91);

    goto LABEL_72;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_255EB1968(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for AVBiomeEventSummary(0) - 8;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v15 = (&v33 - v14);
  v16 = a1[3];
  if (v16)
  {
    v17 = v16 - 1;
    if (__OFSUB__(v16, 1))
    {
      __break(1u);
    }

    else if ((v17 & 0x8000000000000000) == 0)
    {
      if (v17 < v16)
      {
        v18 = a1[4] + v17;
        v19 = a1[2];
        if (v18 < v19)
        {
          v19 = 0;
        }

        sub_255EB26C4(a1 + ((*(v13 + 80) + 40) & ~*(v13 + 80)) + (v18 - v19) * *(v13 + 72), v9, type metadata accessor for AVBiomeEventSummary);
        sub_255EB272C(v9, v12, type metadata accessor for AVBiomeEventSummary);
        sub_255EB272C(v12, v15, type metadata accessor for AVBiomeEventSummary);
        v20 = *v15;
        if (*v15 >= 75.0)
        {
          v21 = 4;
        }

        else
        {
          v21 = 3;
        }

        if (v20 >= 65.0)
        {
          v22 = v21;
        }

        else
        {
          v22 = 2;
        }

        if (v20 < 55.0)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        if (v20 >= 45.0)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = *(v15 + 25);
        v26 = *(v15 + 26);
        v27 = sub_255EB03FC(a1, a2, a3, v24, v26, v25);
        a3 = sub_255EB0B0C(a1, a2, v27, v24, v26, v25);

        sub_255EAFF7C(v15);
        return a3;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (qword_27F815850 != -1)
  {
LABEL_28:
    swift_once();
  }

  v28 = sub_255ECF198();
  __swift_project_value_buffer(v28, qword_27F815858);
  v29 = sub_255ECF178();
  v30 = sub_255ECF408();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_255EA2000, v29, v30, "Couldn't find last value in inputBuffer, returning metrics unchanged", v31, 2u);
    MEMORY[0x259C511E0](v31, -1, -1);
  }

  return a3;
}

unint64_t sub_255EB1C64()
{
  result = qword_27F815998;
  if (!qword_27F815998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F815998);
  }

  return result;
}

uint64_t sub_255EB1CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A80, &qword_255ECFF18);
    v3 = sub_255ECF4A8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_255ECF5C8();

      sub_255ECF2C8();
      result = sub_255ECF5F8();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v16 = ~v11;
        while (1)
        {
          v17 = (*(v3 + 48) + 16 * v12);
          if (*v17 == v9 && v17[1] == v8)
          {
            break;
          }

          result = sub_255ECF588();
          if (result)
          {
            break;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        *(v5 + 8 * v13) = v15 | v14;
        v19 = (*(v3 + 48) + 16 * v12);
        *v19 = v9;
        v19[1] = v8;
        v20 = *(v3 + 16);
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v22;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_255EB1E28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t dispatch thunk of AVLogReader.runModelWithBiomeInputs(model:startDate:batchSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 104) + **(*v3 + 104));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_255EB2058;

  return v10(a1, a2, a3);
}

uint64_t sub_255EB2058(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_255EB2194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_255ECEE68();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 52);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_255EB2254(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
  }

  else
  {
    v7 = sub_255ECEE68();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255EB22F4(uint64_t a1)
{
  result = sub_255ECEE68();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255EB23F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_255EB2484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255EB258C()
{
  result = qword_27F815A18;
  if (!qword_27F815A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815A18);
  }

  return result;
}

uint64_t sub_255EB2624(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_255EB2670()
{
  result = qword_27F815A30;
  if (!qword_27F815A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815A30);
  }

  return result;
}

uint64_t sub_255EB26C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255EB272C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_OWORD *sub_255EB2798(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_255EB27A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255EB27F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_255EB2860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_255EB291C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_255EB29D0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      return 1702125924;
    case 2:
    case 9:
    case 19:
      return 0xD000000000000011;
    case 3:
      return 0x426463694D666572;
    case 4:
      return 0x426463694D666572;
    case 5:
      return 0x4142646D757264;
    case 6:
      return 0x4B42646D757264;
    case 7:
      return 0xD000000000000010;
    case 8:
      return 0x6B6E696C6E776F64;
    case 10:
    case 28:
      v4 = 5;
      return v4 | 0xD000000000000010;
    case 11:
      return 0x6E6F687064616568;
    case 12:
      return 0x79546D6165727473;
    case 13:
    case 15:
      return 0xD000000000000017;
    case 14:
    case 34:
      v4 = 9;
      return v4 | 0xD000000000000010;
    case 16:
      return 0xD00000000000001CLL;
    case 17:
      return 0x64654D457473616CLL;
    case 18:
      return 0xD000000000000010;
    case 20:
    case 26:
      return 0xD000000000000014;
    case 21:
      return 0x726953457473616CLL;
    case 22:
      v3 = 1953718636;
      goto LABEL_28;
    case 23:
      return 0x614568746F6F6D73;
    case 24:
      return 0x4464657269736564;
    case 25:
      return 0xD000000000000010;
    case 27:
      v3 = 1684370032;
LABEL_28:
      result = v3 | 0x536C6F5600000000;
      break;
    case 29:
      result = 0xD000000000000013;
      break;
    case 30:
      result = 0x754378614D6E696DLL;
      break;
    case 31:
      result = 0x6F646E6957676962;
      break;
    case 32:
      result = 0x6E69576C6C616D73;
      break;
    case 33:
      result = 0x7041657669746361;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 36:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

void sub_255EB2E64(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815990, &qword_255ECFBF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255ECFF70;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000255ED0E00;
  v3 = sub_255ECEE68();
  *(inited + 72) = v3;
  __swift_allocate_boxed_opaque_existential_0((inited + 48));
  sub_255ECEE58();
  *(inited + 80) = 0xD000000000000024;
  *(inited + 88) = 0x8000000255ED0E20;
  *(inited + 120) = v3;
  __swift_allocate_boxed_opaque_existential_0((inited + 96));
  sub_255ECEE58();
  *(inited + 128) = 0xD000000000000023;
  *(inited + 136) = 0x8000000255ED0E50;
  *(inited + 168) = v3;
  __swift_allocate_boxed_opaque_existential_0((inited + 144));
  sub_255ECEE58();
  v4 = sub_255EAF890(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D0, &qword_255ECFFE0);
  swift_arrayDestroy();
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v6 = sub_255ECF268();
  v7 = [v5 initWithSuiteName_];

  if (!v7)
  {
    v7 = [objc_opt_self() standardUserDefaults];
  }

  v8 = v7;
  v9 = sub_255ECF1E8();

  [v8 registerDefaults_];

  *a1 = v8;
  a1[1] = 0xD000000000000031;
  a1[2] = 0x8000000255ED0E80;
  a1[3] = v4;
}

uint64_t static UserDefaultsManager.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F8158F0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = qword_27F815AD8;
  v2 = unk_27F815AE0;
  v3 = qword_27F815AE8;
  v4 = unk_27F815AF0;
  *a1 = qword_27F815AD8;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  v5 = v1;
}

Swift::Void __swiftcall UserDefaultsManager.saveEvaluationDate()()
{
  v1 = sub_255ECEE68();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_255ECEE58();
  v6 = sub_255ECEE08();
  (*(v2 + 8))(v4, v1);
  v7 = sub_255ECF268();
  [v5 setObject:v6 forKey:v7];
}

void UserDefaultsManager.saveDataFrameDateRange(startDate:endDate:)(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_255ECEE08();
  v4 = sub_255ECF268();
  [v2 setObject:v3 forKey:v4];

  v5 = sub_255ECEE08();
  v6 = sub_255ECF268();
  [v2 setObject:v5 forKey:v6];
}

uint64_t UserDefaultsManager.previousEvaluationDate()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_255ECF268();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_255ECF458();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = sub_255ECEE68();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_255EB3458(v12);
    v9 = sub_255ECEE68();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_255EB3458(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AF8, &qword_255ECFF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_255EB34CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_255EB3514(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_255EB35C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a4;
  v85 = a5;
  v8 = sub_255ECEFC8();
  v81 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v72[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_255ECF078();
  v12 = *(v11 - 8);
  v82 = v11;
  v83 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v72[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v72[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v72[-v19];
  if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000 || (sub_255ECF588() & 1) != 0)
  {
    if (!*(a3 + 16) || (v21 = sub_255EACAD4(0x79747265706F7270, 0xE800000000000000), (v22 & 1) == 0))
    {
      if (qword_27F815890 != -1)
      {
        swift_once();
      }

      v53 = sub_255ECF198();
      __swift_project_value_buffer(v53, qword_27F815898);

      v54 = sub_255ECF178();
      v55 = sub_255ECF408();

      if (!os_log_type_enabled(v54, v55))
      {
        goto LABEL_45;
      }

      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v86[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_255EBCAE0(a1, a2, v86);
      v58 = "Missing 'property' argument in 'filter' named %s.";
      goto LABEL_44;
    }

    if (*(a3 + 16))
    {
      v23 = *(a3 + 56) + 16 * v21;
      v24 = *(v23 + 8);
      v80 = *v23;

      v25 = sub_255EACAD4(0x65756C6176, 0xE500000000000000);
      if (v26)
      {
        v79 = v24;
        if (*(a3 + 16))
        {
          v27 = (*(a3 + 56) + 16 * v25);
          v28 = v27[1];
          v78 = *v27;

          v29 = sub_255EACAD4(0x6F6974617265706FLL, 0xE90000000000006ELL);
          if (v30)
          {
            v31 = (*(a3 + 56) + 16 * v29);
            v33 = *v31;
            v32 = v31[1];
            v86[3] = MEMORY[0x277D837D0];
            v86[0] = v78;
            v86[1] = v28;

            v34 = v84;
            v75 = v33;
            v77 = v32;
            sub_255EB40B4(v84, v80, v79, v86, v33, v32, v20);
            __swift_destroy_boxed_opaque_existential_0(v86);
            v76 = v28;
            if (qword_27F815890 != -1)
            {
              swift_once();
            }

            v35 = sub_255ECF198();
            __swift_project_value_buffer(v35, qword_27F815898);
            v36 = *(v83 + 16);
            v37 = v34;
            v38 = v82;
            v36(v18, v37, v82);
            v36(v15, v20, v38);
            v39 = v79;

            v40 = sub_255ECF178();
            v41 = sub_255ECF3F8();

            v84 = v40;
            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v73 = v41;
              v43 = v42;
              v74 = swift_slowAlloc();
              v86[0] = v74;
              *v43 = 136316162;
              v44 = sub_255EBCAE0(v80, v39, v86);

              *(v43 + 4) = v44;
              *(v43 + 12) = 2080;
              v45 = sub_255EBCAE0(v75, v77, v86);

              *(v43 + 14) = v45;
              *(v43 + 22) = 2080;
              v46 = sub_255EBCAE0(v78, v76, v86);

              *(v43 + 24) = v46;
              *(v43 + 32) = 2048;
              sub_255ECEFD8();
              v47 = sub_255ECEFB8();
              v81 = *(v81 + 8);
              (v81)(v10, v8);
              v48 = *(v83 + 8);
              v48(v18, v82);
              *(v43 + 34) = v47;
              *(v43 + 42) = 2048;
              sub_255ECEFD8();
              v49 = sub_255ECEFB8();
              (v81)(v10, v8);
              v48(v15, v82);
              v50 = v82;
              *(v43 + 44) = v49;
              v51 = v84;
              _os_log_impl(&dword_255EA2000, v84, v73, "'%s %s %s' reduces data samples from %ld samples to %ld samples.", v43, 0x34u);
              v52 = v74;
              swift_arrayDestroy();
              MEMORY[0x259C511E0](v52, -1, -1);
              MEMORY[0x259C511E0](v43, -1, -1);
            }

            else
            {
              v50 = v82;
              v71 = *(v83 + 8);
              v71(v15, v82);
              v71(v18, v50);
            }

            return (*(v83 + 32))(v85, v20, v50);
          }
        }

        if (qword_27F815890 != -1)
        {
          swift_once();
        }

        v65 = sub_255ECF198();
        __swift_project_value_buffer(v65, qword_27F815898);

        v54 = sub_255ECF178();
        v55 = sub_255ECF408();

        if (!os_log_type_enabled(v54, v55))
        {
          goto LABEL_45;
        }

        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v86[0] = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_255EBCAE0(a1, a2, v86);
        v58 = "Missing 'operation' argument in 'filter' named %s.";
        goto LABEL_44;
      }
    }

    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v62 = sub_255ECF198();
    __swift_project_value_buffer(v62, qword_27F815898);

    v54 = sub_255ECF178();
    v55 = sub_255ECF408();

    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_45;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v86[0] = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_255EBCAE0(a1, a2, v86);
    v58 = "Missing 'value' argument in 'filter' named %s.";
LABEL_44:
    _os_log_impl(&dword_255EA2000, v54, v55, v58, v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x259C511E0](v57, -1, -1);
    MEMORY[0x259C511E0](v56, -1, -1);
LABEL_45:

    v67 = v84;
    v68 = *(v83 + 16);
    v69 = v85;
    v70 = v82;

    return v68(v69, v67, v70);
  }

  if (a1 == 0xD00000000000001CLL && 0x8000000255ED0EC0 == a2 || (sub_255ECF588() & 1) != 0)
  {
    v59 = v84;
    v60 = v85;

    return sub_255EB67A8(v59, v60);
  }

  else
  {
    if ((a1 != 0xD000000000000010 || 0x8000000255ED0EE0 != a2) && (sub_255ECF588() & 1) == 0)
    {
      if (qword_27F815890 != -1)
      {
        swift_once();
      }

      v66 = sub_255ECF198();
      __swift_project_value_buffer(v66, qword_27F815898);

      v54 = sub_255ECF178();
      v55 = sub_255ECF408();

      if (!os_log_type_enabled(v54, v55))
      {
        goto LABEL_45;
      }

      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v86[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_255EBCAE0(a1, a2, v86);
      v58 = "ERROR: Could not find filter function '%s'.";
      goto LABEL_44;
    }

    v63 = v84;
    v64 = v85;

    return sub_255EB71CC(v63, v64);
  }
}

uint64_t sub_255EB40B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v157 = a6;
  v158 = a4;
  v154 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  MEMORY[0x28223BE20](v11 - 8);
  v150 = &v148 - v12;
  v13 = sub_255ECEE68();
  v151 = *(v13 - 8);
  v152 = v13;
  MEMORY[0x28223BE20](v13);
  v155 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D84F90];
  v162 = MEMORY[0x277D84F90];
  sub_255EADBD8(0, 2, 0);
  v16 = v162;
  v17 = sub_255EB29D0(byte_2867F8FC8);
  v20 = *(v16 + 16);
  v19 = *(v16 + 24);
  if (v20 >= v19 >> 1)
  {
    v142 = v17;
    v143 = v18;
    sub_255EADBD8((v19 > 1), v20 + 1, 1);
    v18 = v143;
    v17 = v142;
    v16 = v162;
  }

  *(v16 + 16) = v20 + 1;
  v21 = v16 + 16 * v20;
  *(v21 + 32) = v17;
  *(v21 + 40) = v18;
  v22 = sub_255EB29D0(byte_2867F8FC9);
  v162 = v16;
  v25 = *(v16 + 16);
  v24 = *(v16 + 24);
  if (v25 >= v24 >> 1)
  {
    v144 = v22;
    v145 = v23;
    sub_255EADBD8((v24 > 1), v25 + 1, 1);
    v23 = v145;
    v22 = v144;
    v16 = v162;
  }

  *(v16 + 16) = v25 + 1;
  v26 = v16 + 16 * v25;
  *(v26 + 32) = v22;
  *(v26 + 40) = v23;
  v162 = a2;
  v163 = a3;
  MEMORY[0x28223BE20](v22);
  *(&v148 - 2) = &v162;
  v27 = sub_255EB8728(sub_255EB87D4, (&v148 - 4), v16);

  if ((v27 & 1) == 0)
  {
    v156 = a2;
    v153 = a3;
    v149 = a7;
    v162 = v15;
    sub_255EADBD8(0, 33, 0);
    v42 = 0;
    v43 = v162;
    do
    {
      v44 = sub_255EB29D0(byte_2867F8F60[v42 + 32]);
      v45 = v44;
      v47 = v46;
      v162 = v43;
      v49 = *(v43 + 16);
      v48 = *(v43 + 24);
      if (v49 >= v48 >> 1)
      {
        v44 = sub_255EADBD8((v48 > 1), v49 + 1, 1);
        v43 = v162;
      }

      ++v42;
      *(v43 + 16) = v49 + 1;
      v50 = v43 + 16 * v49;
      *(v50 + 32) = v45;
      *(v50 + 40) = v47;
    }

    while (v42 != 33);
    v51 = v153;
    v162 = v156;
    v163 = v153;
    MEMORY[0x28223BE20](v44);
    *(&v148 - 2) = &v162;
    v52 = sub_255EB8728(sub_255EB8CB0, (&v148 - 4), v43);

    if (v52)
    {
      v53 = v158;
      sub_255EAF798(v158, &v162);
      v54 = a1;
      if (!swift_dynamicCast())
      {
        v89 = v149;
        if (qword_27F815890 != -1)
        {
          swift_once();
        }

        v90 = sub_255ECF198();
        __swift_project_value_buffer(v90, qword_27F815898);
        sub_255EAF798(v53, &v162);
        v91 = sub_255ECF178();
        v92 = sub_255ECF408();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v161 = v94;
          *v93 = 136315138;
          sub_255EAF798(&v162, &v159);
          v95 = sub_255ECF2A8();
          v97 = v96;
          __swift_destroy_boxed_opaque_existential_0(&v162);
          v98 = sub_255EBCAE0(v95, v97, &v161);

          *(v93 + 4) = v98;
          _os_log_impl(&dword_255EA2000, v91, v92, "Could not parse value '%s' as String.", v93, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v94);
          MEMORY[0x259C511E0](v94, -1, -1);
          MEMORY[0x259C511E0](v93, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(&v162);
        }

        v99 = sub_255ECF078();
        v100 = *(*(v99 - 8) + 16);
        v101 = v89;
        goto LABEL_68;
      }

      v55 = sub_255EBC1D8(v159, v160);
      v56 = v149;
      if (v57)
      {
        if (qword_27F815890 != -1)
        {
          swift_once();
        }

        v58 = sub_255ECF198();
        __swift_project_value_buffer(v58, qword_27F815898);
        v59 = sub_255ECF178();
        v60 = sub_255ECF408();
        if (!os_log_type_enabled(v59, v60))
        {
          goto LABEL_67;
        }

        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_255EA2000, v59, v60, "Could not parse String value as Int value.", v61, 2u);
      }

      else
      {
        v109 = v55;
        v110 = v154;
        v111 = v157;
        v112 = sub_255EB5284(v154, v157);
        if (v112)
        {
          v114 = v112;
          v115 = v113;
          v116 = swift_allocObject();
          *(v116 + 16) = v114;
          *(v116 + 24) = v115;
          v117 = MEMORY[0x28223BE20](v116);
          *(&v148 - 2) = sub_255EB8890;
          *(&v148 - 1) = v117;
          sub_255EB5B9C(a1, v156, v153, v109, sub_255EB88D0, (&v148 - 4), v56);
        }

        if (qword_27F815890 != -1)
        {
          swift_once();
        }

        v133 = sub_255ECF198();
        __swift_project_value_buffer(v133, qword_27F815898);

        v59 = sub_255ECF178();
        v134 = sub_255ECF408();

        if (!os_log_type_enabled(v59, v134))
        {
          goto LABEL_67;
        }

        v61 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v162 = v135;
        *v61 = 136315138;
        *(v61 + 4) = sub_255EBCAE0(v110, v111, &v162);
        _os_log_impl(&dword_255EA2000, v59, v134, "Could not parse operator '%s'.", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v135);
        MEMORY[0x259C511E0](v135, -1, -1);
      }

      MEMORY[0x259C511E0](v61, -1, -1);
LABEL_67:

      v99 = sub_255ECF078();
      v100 = *(*(v99 - 8) + 16);
      v101 = v56;
LABEL_68:
      v126 = v54;
      return v100(v101, v126, v99);
    }

    v162 = v15;
    sub_255EADBD8(0, 1, 0);
    v71 = v162;
    v72 = sub_255EB29D0(byte_2867F8FF0);
    v75 = *(v71 + 16);
    v74 = *(v71 + 24);
    if (v75 >= v74 >> 1)
    {
      v146 = v72;
      v147 = v73;
      sub_255EADBD8((v74 > 1), v75 + 1, 1);
      v73 = v147;
      v51 = v153;
      v72 = v146;
      v71 = v162;
    }

    *(v71 + 16) = v75 + 1;
    v76 = v71 + 16 * v75;
    *(v76 + 32) = v72;
    *(v76 + 40) = v73;
    v77 = v156;
    v162 = v156;
    v163 = v51;
    MEMORY[0x28223BE20](v72);
    *(&v148 - 2) = &v162;
    v78 = sub_255EB8728(sub_255EB8CB0, (&v148 - 4), v71);

    v79 = v149;
    v80 = v155;
    if (v78)
    {
      v81 = v158;
      sub_255EAF798(v158, &v162);
      if (!swift_dynamicCast())
      {
        if (qword_27F815890 != -1)
        {
          swift_once();
        }

        v118 = sub_255ECF198();
        __swift_project_value_buffer(v118, qword_27F815898);
        sub_255EAF798(v81, &v162);
        v86 = sub_255ECF178();
        v119 = sub_255ECF408();
        if (!os_log_type_enabled(v86, v119))
        {

          __swift_destroy_boxed_opaque_existential_0(&v162);
          goto LABEL_55;
        }

        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v161 = v121;
        *v120 = 136315138;
        sub_255EAF798(&v162, &v159);
        v122 = sub_255ECF2A8();
        v124 = v123;
        __swift_destroy_boxed_opaque_existential_0(&v162);
        v125 = sub_255EBCAE0(v122, v124, &v161);

        *(v120 + 4) = v125;
        _os_log_impl(&dword_255EA2000, v86, v119, "Could not parse value '%s' as String.", v120, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v121);
        MEMORY[0x259C511E0](v121, -1, -1);
        v108 = v120;
        goto LABEL_53;
      }

      v82 = v150;
      sub_255EB65C8(v150);

      v83 = v151;
      v84 = v152;
      if ((*(v151 + 48))(v82, 1, v152) != 1)
      {
        (*(v83 + 32))(v80, v82, v84);
        v127 = v154;
        v128 = v157;
        v129 = sub_255EB54A4(v154, v157);
        if (v129)
        {
          v131 = v129;
          v132 = v130;
          sub_255EB6074(a1, v77, v153, v80, v129, v130, v79);
          (*(v83 + 8))(v80, v84);
          return sub_255EB291C(v131, v132);
        }

        if (qword_27F815890 != -1)
        {
          swift_once();
        }

        v136 = sub_255ECF198();
        __swift_project_value_buffer(v136, qword_27F815898);

        v137 = sub_255ECF178();
        v138 = sub_255ECF408();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = v83;
          v141 = swift_slowAlloc();
          v162 = v141;
          *v139 = 136315138;
          *(v139 + 4) = sub_255EBCAE0(v127, v128, &v162);
          _os_log_impl(&dword_255EA2000, v137, v138, "Could not parse operator '%s'.", v139, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v141);
          MEMORY[0x259C511E0](v141, -1, -1);
          MEMORY[0x259C511E0](v139, -1, -1);

          (*(v140 + 8))(v155, v84);
        }

        else
        {

          (*(v83 + 8))(v80, v84);
        }

        goto LABEL_55;
      }

      sub_255EB87F0(v82);
      if (qword_27F815890 != -1)
      {
        swift_once();
      }

      v85 = sub_255ECF198();
      __swift_project_value_buffer(v85, qword_27F815898);
      v86 = sub_255ECF178();
      v87 = sub_255ECF408();
      if (!os_log_type_enabled(v86, v87))
      {
        goto LABEL_54;
      }

      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_255EA2000, v86, v87, "Could not parse String value as Date value.", v88, 2u);
    }

    else
    {
      if (qword_27F815890 != -1)
      {
        swift_once();
      }

      v102 = sub_255ECF198();
      __swift_project_value_buffer(v102, qword_27F815898);
      v103 = v153;

      v86 = sub_255ECF178();
      v104 = sub_255ECF408();

      if (!os_log_type_enabled(v86, v104))
      {
        goto LABEL_54;
      }

      v88 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v106 = v77;
      v107 = v105;
      v162 = v105;
      *v88 = 136315138;
      *(v88 + 4) = sub_255EBCAE0(v106, v103, &v162);
      _os_log_impl(&dword_255EA2000, v86, v104, "No field '%s' available for filtering.", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v107);
      MEMORY[0x259C511E0](v107, -1, -1);
    }

    v108 = v88;
LABEL_53:
    MEMORY[0x259C511E0](v108, -1, -1);
LABEL_54:

LABEL_55:
    v99 = sub_255ECF078();
    v100 = *(*(v99 - 8) + 16);
    v101 = v79;
LABEL_56:
    v126 = a1;
    return v100(v101, v126, v99);
  }

  v28 = v158;
  sub_255EAF798(v158, &v162);
  if (!swift_dynamicCast())
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v62 = sub_255ECF198();
    __swift_project_value_buffer(v62, qword_27F815898);
    sub_255EAF798(v28, &v162);
    v63 = sub_255ECF178();
    v64 = sub_255ECF408();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v161 = v66;
      *v65 = 136315138;
      sub_255EAF798(&v162, &v159);
      v67 = sub_255ECF2A8();
      v69 = v68;
      __swift_destroy_boxed_opaque_existential_0(&v162);
      v70 = sub_255EBCAE0(v67, v69, &v161);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_255EA2000, v63, v64, "Could not parse value '%s' as String.", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x259C511E0](v66, -1, -1);
      MEMORY[0x259C511E0](v65, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v162);
    }

    v99 = sub_255ECF078();
    v100 = *(*(v99 - 8) + 16);
    v101 = a7;
    goto LABEL_56;
  }

  v29 = a2;
  v30 = v160;
  v158 = v159;
  if (qword_27F815890 != -1)
  {
    swift_once();
  }

  v31 = sub_255ECF198();
  __swift_project_value_buffer(v31, qword_27F815898);
  v32 = v157;

  v33 = sub_255ECF178();
  v34 = sub_255ECF408();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = a3;
    v37 = swift_slowAlloc();
    v162 = v37;
    *v35 = 136315138;
    *(v35 + 4) = sub_255EBCAE0(v154, v32, &v162);
    _os_log_impl(&dword_255EA2000, v33, v34, "String values only support '==' operation, but '%s' provided. Defaulting to '=='.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    v38 = v37;
    a3 = v36;
    MEMORY[0x259C511E0](v38, -1, -1);
    MEMORY[0x259C511E0](v35, -1, -1);
  }

  v39 = swift_allocObject();
  *(v39 + 16) = sub_255EB89FC;
  *(v39 + 24) = 0;
  v40 = MEMORY[0x28223BE20](v39);
  *(&v148 - 2) = sub_255EB8A2C;
  *(&v148 - 1) = v40;
  sub_255EB56C4(a1, v29, a3, v158, v30, sub_255EB8A70, (&v148 - 4), a7);
}

uint64_t (*sub_255EB5284(uint64_t a1, uint64_t a2))()
{
  v4 = sub_255EB8904;
  if (a1 != 15677 || a2 != 0xE200000000000000)
  {
    v5 = sub_255ECF588();
    v4 = sub_255EB8904;
    if ((v5 & 1) == 0)
    {
      v4 = sub_255EB8918;
      if (a1 != 60 || a2 != 0xE100000000000000)
      {
        v6 = sub_255ECF588();
        v4 = sub_255EB8918;
        if ((v6 & 1) == 0)
        {
          v4 = sub_255EB892C;
          if (a1 != 62 || a2 != 0xE100000000000000)
          {
            v7 = sub_255ECF588();
            v4 = sub_255EB892C;
            if ((v7 & 1) == 0)
            {
              v4 = sub_255EB8940;
              if (a1 != 15676 || a2 != 0xE200000000000000)
              {
                v8 = sub_255ECF588();
                v4 = sub_255EB8940;
                if ((v8 & 1) == 0)
                {
                  v4 = sub_255EB8954;
                  if (a1 != 15678 || a2 != 0xE200000000000000)
                  {
                    v9 = sub_255ECF588();
                    v4 = sub_255EB8954;
                    if ((v9 & 1) == 0)
                    {
                      v4 = sub_255EB8968;
                      if (a1 != 15649 || a2 != 0xE200000000000000)
                      {
                        v10 = sub_255ECF588();
                        v4 = sub_255EB8968;
                        if ((v10 & 1) == 0)
                        {
                          return 0;
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

  return v4;
}

uint64_t (*sub_255EB54A4(uint64_t a1, uint64_t a2))()
{
  v4 = sub_255EB7F80;
  if (a1 != 15677 || a2 != 0xE200000000000000)
  {
    v5 = sub_255ECF588();
    v4 = sub_255EB7F80;
    if ((v5 & 1) == 0)
    {
      v4 = sub_255EB7FB4;
      if (a1 != 60 || a2 != 0xE100000000000000)
      {
        v6 = sub_255ECF588();
        v4 = sub_255EB7FB4;
        if ((v6 & 1) == 0)
        {
          v4 = sub_255EB8060;
          if (a1 != 62 || a2 != 0xE100000000000000)
          {
            v7 = sub_255ECF588();
            v4 = sub_255EB8060;
            if ((v7 & 1) == 0)
            {
              v4 = sub_255EB8094;
              if (a1 != 15676 || a2 != 0xE200000000000000)
              {
                v8 = sub_255ECF588();
                v4 = sub_255EB8094;
                if ((v8 & 1) == 0)
                {
                  v4 = sub_255EB80C8;
                  if (a1 != 15678 || a2 != 0xE200000000000000)
                  {
                    v9 = sub_255ECF588();
                    v4 = sub_255EB80C8;
                    if ((v9 & 1) == 0)
                    {
                      v4 = sub_255EB80FC;
                      if (a1 != 15649 || a2 != 0xE200000000000000)
                      {
                        v10 = sub_255ECF588();
                        v4 = sub_255EB80FC;
                        if ((v10 & 1) == 0)
                        {
                          return 0;
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

  return v4;
}

uint64_t sub_255EB56C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a6;
  v44 = a7;
  v47 = a8;
  v13 = sub_255ECEFF8();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v49[0] = a4;
  v49[1] = a5;
  v48[0] = MEMORY[0x277D84F90];
  sub_255EADBD8(0, 36, 0);
  v19 = 0;
  v20 = v48[0];
  do
  {
    v21 = sub_255EB29D0(byte_2867F8F18[v19 + 32]);
    v48[0] = v20;
    v24 = *(v20 + 16);
    v23 = *(v20 + 24);
    if (v24 >= v23 >> 1)
    {
      v41 = v22;
      v42 = v21;
      sub_255EADBD8((v23 > 1), v24 + 1, 1);
      v22 = v41;
      v21 = v42;
      v20 = v48[0];
    }

    ++v19;
    *(v20 + 16) = v24 + 1;
    v25 = v20 + 16 * v24;
    *(v25 + 32) = v21;
    *(v25 + 40) = v22;
  }

  while (v19 != 36);
  v48[0] = a2;
  v48[1] = a3;
  MEMORY[0x28223BE20](v21);
  *(&v41 - 2) = v48;
  v26 = sub_255EB8728(sub_255EB8CB0, (&v41 - 4), v20);

  if ((v26 & 1) == 0)
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v35 = sub_255ECF198();
    __swift_project_value_buffer(v35, qword_27F815898);

    v30 = sub_255ECF178();
    v31 = sub_255ECF408();

    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_16;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v48[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_255EBCAE0(a2, a3, v48);
    v34 = "Field '%s' is not defined. Filtering skipped.";
    goto LABEL_15;
  }

  v27 = sub_255ECEF78();
  if (v28)
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v29 = sub_255ECF198();
    __swift_project_value_buffer(v29, qword_27F815898);

    v30 = sub_255ECF178();
    v31 = sub_255ECF408();

    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_16;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v48[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_255EBCAE0(a2, a3, v48);
    v34 = "Field '%s' is defined, but does not exist in data frame. Filtering skipped.";
LABEL_15:
    _os_log_impl(&dword_255EA2000, v30, v31, v34, v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x259C511E0](v33, -1, -1);
    MEMORY[0x259C511E0](v32, -1, -1);
LABEL_16:

    v36 = sub_255ECF078();
    return (*(*(v36 - 8) + 16))(v47, a1, v36);
  }

  MEMORY[0x28223BE20](v27);
  v38 = v44;
  *(&v41 - 4) = v43;
  *(&v41 - 3) = v38;
  *(&v41 - 2) = v49;
  sub_255ECF048();
  v40 = v45;
  v39 = v46;
  (*(v45 + 16))(v16, v18, v46);
  sub_255ECF088();
  return (*(v40 + 8))(v18, v39);
}

uint64_t sub_255EB5B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a5;
  v42 = a6;
  v44 = a7;
  v45 = a2;
  v10 = sub_255ECEFF8();
  v43 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v47 = a4;
  v46[0] = MEMORY[0x277D84F90];
  sub_255EADBD8(0, 36, 0);
  v16 = 0;
  v17 = v46[0];
  do
  {
    v18 = sub_255EB29D0(byte_2867F8F18[v16 + 32]);
    v46[0] = v17;
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v21 >= v20 >> 1)
    {
      v39 = v19;
      v40 = v18;
      sub_255EADBD8((v20 > 1), v21 + 1, 1);
      v19 = v39;
      v18 = v40;
      v17 = v46[0];
    }

    ++v16;
    *(v17 + 16) = v21 + 1;
    v22 = v17 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
  }

  while (v16 != 36);
  v23 = v45;
  v46[0] = v45;
  v46[1] = a3;
  MEMORY[0x28223BE20](v18);
  *(&v38 - 2) = v46;
  v24 = sub_255EB8728(sub_255EB8CB0, (&v38 - 4), v17);

  if ((v24 & 1) == 0)
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v33 = sub_255ECF198();
    __swift_project_value_buffer(v33, qword_27F815898);

    v28 = sub_255ECF178();
    v29 = sub_255ECF408();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_16;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v46[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_255EBCAE0(v23, a3, v46);
    v32 = "Field '%s' is not defined. Filtering skipped.";
    goto LABEL_15;
  }

  v25 = sub_255ECEF78();
  if (v26)
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v27 = sub_255ECF198();
    __swift_project_value_buffer(v27, qword_27F815898);

    v28 = sub_255ECF178();
    v29 = sub_255ECF408();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_16;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v46[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_255EBCAE0(v45, a3, v46);
    v32 = "Field '%s' is defined, but does not exist in data frame. Filtering skipped.";
LABEL_15:
    _os_log_impl(&dword_255EA2000, v28, v29, v32, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x259C511E0](v31, -1, -1);
    MEMORY[0x259C511E0](v30, -1, -1);
LABEL_16:

    v34 = sub_255ECF078();
    return (*(*(v34 - 8) + 16))(v44, a1, v34);
  }

  MEMORY[0x28223BE20](v25);
  v36 = v42;
  *(&v38 - 4) = v41;
  *(&v38 - 3) = v36;
  *(&v38 - 2) = &v47;
  sub_255ECF048();
  v37 = v43;
  (*(v43 + 16))(v13, v15, v10);
  sub_255ECF088();
  return (*(v37 + 8))(v15, v10);
}

uint64_t sub_255EB6074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a4;
  v49 = a6;
  v47 = a5;
  v51 = a7;
  v52 = a2;
  v9 = sub_255ECEFF8();
  v50 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v46 = sub_255ECEE68();
  v53[0] = MEMORY[0x277D84F90];
  sub_255EADBD8(0, 36, 0);
  v15 = 0;
  v16 = v53[0];
  do
  {
    v17 = sub_255EB29D0(byte_2867F8F18[v15 + 32]);
    v53[0] = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v44 = v18;
      v45 = v17;
      sub_255EADBD8((v19 > 1), v20 + 1, 1);
      v18 = v44;
      v17 = v45;
      v16 = v53[0];
    }

    ++v15;
    *(v16 + 16) = v20 + 1;
    v21 = v16 + 16 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
  }

  while (v15 != 36);
  v22 = v52;
  v53[0] = v52;
  v53[1] = a3;
  MEMORY[0x28223BE20](v17);
  *(&v44 - 2) = v53;
  v23 = sub_255EB8728(sub_255EB8CB0, (&v44 - 4), v16);

  if (v23)
  {
    v24 = a1;
    v25 = sub_255ECEF78();
    if (v26)
    {
      if (qword_27F815890 != -1)
      {
        swift_once();
      }

      v27 = sub_255ECF198();
      __swift_project_value_buffer(v27, qword_27F815898);

      v28 = sub_255ECF178();
      v29 = sub_255ECF408();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v53[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_255EBCAE0(v52, a3, v53);
        _os_log_impl(&dword_255EA2000, v28, v29, "Field '%s' is defined, but does not exist in data frame. Filtering skipped.", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x259C511E0](v31, -1, -1);
        MEMORY[0x259C511E0](v30, -1, -1);
      }

      v32 = sub_255ECF078();
      return (*(*(v32 - 8) + 16))(v51, v24, v32);
    }

    else
    {
      MEMORY[0x28223BE20](v25);
      v41 = v48;
      v42 = v49;
      *(&v44 - 4) = v47;
      *(&v44 - 3) = v42;
      *(&v44 - 2) = v41;
      sub_255ECF048();
      v43 = v50;
      (*(v50 + 16))(v12, v14, v9);
      sub_255ECF088();
      return (*(v43 + 8))(v14, v9);
    }
  }

  else
  {
    v34 = a1;
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v35 = sub_255ECF198();
    __swift_project_value_buffer(v35, qword_27F815898);

    v36 = sub_255ECF178();
    v37 = sub_255ECF408();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_255EBCAE0(v22, a3, v53);
      _os_log_impl(&dword_255EA2000, v36, v37, "Field '%s' is not defined. Filtering skipped.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x259C511E0](v39, -1, -1);
      MEMORY[0x259C511E0](v38, -1, -1);
    }

    v40 = sub_255ECF078();
    return (*(*(v40 - 8) + 16))(v51, v34, v40);
  }
}

uint64_t sub_255EB65C8@<X0>(uint64_t a3@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = sub_255ECF268();
  [v4 setDateFormat_];

  v6 = sub_255ECF268();
  v7 = [v4 dateFromString_];

  if (v7)
  {
    sub_255ECEE48();
    v8 = 0;
  }

  else
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v9 = sub_255ECF198();
    __swift_project_value_buffer(v9, qword_27F815898);
    v7 = sub_255ECF178();
    v10 = sub_255ECF408();
    if (os_log_type_enabled(v7, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_255EA2000, v7, v10, "Error: Could not parse date. Returning now.", v11, 2u);
      MEMORY[0x259C511E0](v11, -1, -1);
    }

    v8 = 1;
  }

  v12 = sub_255ECEE68();
  v13 = *(*(v12 - 8) + 56);

  return v13(a3, v8, 1, v12);
}

uint64_t sub_255EB67A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = sub_255ECEFC8();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255ECEE68();
  v82 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v81 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v70 - v8;
  v9 = sub_255ECF078();
  v10 = *(v9 - 8);
  v88 = v9;
  v89 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v79 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = &v70 - v13;
  v14 = sub_255ECEFF8();
  v83 = *(v14 - 8);
  v84 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v70 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v70 - v24;
  v26 = sub_255ECEF18();
  MEMORY[0x28223BE20](v26 - 8);
  v86 = sub_255ECEEF8();
  v27 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255ECEEC8();
  sub_255ECEF08();
  sub_255ECEED8();
  if (qword_27F8158F0 != -1)
  {
    swift_once();
  }

  v90[0] = qword_27F815AD8;
  v90[1] = unk_27F815AE0;
  v90[2] = qword_27F815AE8;
  v90[3] = unk_27F815AF0;
  v30 = qword_27F815AD8;

  UserDefaultsManager.previousEvaluationDate()(v25);
  v31 = v90[0];

  v32 = sub_255ECEF78();
  if (v33)
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v34 = sub_255ECF198();
    __swift_project_value_buffer(v34, qword_27F815898);
    v35 = sub_255ECF178();
    v36 = sub_255ECF408();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v88;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v90[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_255EBCAE0(1702125924, 0xE400000000000000, v90);
      _os_log_impl(&dword_255EA2000, v35, v36, "Column '%s' does not exist. Return all samples.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x259C511E0](v40, -1, -1);
      MEMORY[0x259C511E0](v39, -1, -1);
    }

    (*(v27 + 8))(v29, v86);
    (*(v89 + 16))(v87, a1, v38);
  }

  else
  {
    v75 = v27;
    MEMORY[0x28223BE20](v32);
    *(&v70 - 2) = v25;
    sub_255ECF048();
    v42 = v83;
    v41 = v84;
    (*(v83 + 16))(v17, v19, v84);
    v43 = v85;
    sub_255ECF088();
    sub_255EB8BB8(v25, v23);
    v44 = v82;
    if ((*(v82 + 48))(v23, 1, v5) == 1)
    {
      (*(v42 + 8))(v19, v41);
      (*(v75 + 8))(v29, v86);
      sub_255EB87F0(v23);
      v46 = v88;
      v45 = v89;
    }

    else
    {
      v74 = v19;
      v47 = v80;
      (*(v44 + 32))(v80, v23, v5);
      v46 = v88;
      v48 = v89;
      if (qword_27F815890 != -1)
      {
        swift_once();
      }

      v49 = sub_255ECF198();
      __swift_project_value_buffer(v49, qword_27F815898);
      v50 = v79;
      (*(v48 + 16))(v79, v43, v46);
      (*(v44 + 16))(v81, v47, v5);
      v51 = sub_255ECF178();
      v72 = sub_255ECF3F8();
      v73 = v51;
      v52 = os_log_type_enabled(v51, v72);
      v53 = v75;
      if (v52)
      {
        v54 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v90[0] = v71;
        *v54 = 134218242;
        v55 = v44;
        v56 = v53;
        v57 = v76;
        sub_255ECEFD8();
        v58 = sub_255ECEFB8();
        (*(v77 + 8))(v57, v78);
        (*(v89 + 8))(v50, v88);
        *(v54 + 4) = v58;
        *(v54 + 12) = 2080;
        sub_255EB8C48(&qword_27F815B00, MEMORY[0x277CC95B8]);
        v59 = v81;
        v60 = sub_255ECF578();
        v62 = v61;
        v63 = *(v55 + 8);
        v63(v59, v5);
        v64 = sub_255EBCAE0(v60, v62, v90);

        *(v54 + 14) = v64;
        v45 = v89;
        v65 = v73;
        _os_log_impl(&dword_255EA2000, v73, v72, "'newSamplesSinceLastPluginRun' found %ld samples since last plugin run on %s.", v54, 0x16u);
        v66 = v71;
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x259C511E0](v66, -1, -1);
        v67 = v54;
        v46 = v88;
        MEMORY[0x259C511E0](v67, -1, -1);

        v63(v80, v5);
        (*(v83 + 8))(v74, v84);
        (*(v56 + 8))(v29, v86);
      }

      else
      {
        (*(v48 + 8))(v50, v46);

        v68 = *(v44 + 8);
        v68(v81, v5);
        v68(v47, v5);
        v45 = v89;
        (*(v83 + 8))(v74, v84);
        (*(v53 + 8))(v29, v86);
      }

      v43 = v85;
    }

    (*(v45 + 32))(v87, v43, v46);
  }

  return sub_255EB87F0(v25);
}

uint64_t sub_255EB71CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v96 = a2;
  v81 = sub_255ECEFC8();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_255ECF078();
  v95 = *(v102 - 8);
  v3 = MEMORY[0x28223BE20](v102);
  v84 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v92 = &v79 - v5;
  v93 = sub_255ECEFF8();
  v90 = *(v93 - 8);
  v6 = MEMORY[0x28223BE20](v93);
  v86 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v87 = &v79 - v8;
  v9 = sub_255ECEEE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v100 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v79 - v16;
  v18 = sub_255ECEE68();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v83 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v104 = &v79 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v105 = &v79 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v79 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v79 - v29;
  v31 = sub_255ECEF18();
  MEMORY[0x28223BE20](v31 - 8);
  v94 = sub_255ECEEF8();
  v91 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v33 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255ECEEC8();
  sub_255ECEF08();
  sub_255ECEED8();
  sub_255ECEE58();
  sub_255ECEEA8();
  v88 = v19[1];
  v89 = v19 + 1;
  v88(v28, v18);
  v34 = *MEMORY[0x277CC9968];
  v99 = *(v10 + 104);
  v99(v12, v34, v9);
  v103 = v30;
  sub_255ECEEB8();
  v35 = v17;
  v36 = *(v10 + 8);
  v101 = (v10 + 8);
  v98 = v36;
  v36(v12, v9);
  v37 = v17;
  v38 = v18;
  v97 = v19[6];
  result = v97(v37, 1, v18);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v82 = v19;
  v40 = v19[4];
  v40(v105, v35, v38);
  v99(v12, *MEMORY[0x277CC99A8], v9);
  v41 = v100;
  sub_255ECEEB8();
  v98(v12, v9);
  result = v97(v41, 1, v38);
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v42 = v38;
  v43 = v33;
  v44 = v104;
  v40(v104, v41, v38);
  v45 = v85;
  v46 = sub_255ECEF78();
  v47 = v95;
  v48 = v103;
  if (v49)
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v50 = sub_255ECF198();
    __swift_project_value_buffer(v50, qword_27F815898);
    v51 = sub_255ECF178();
    v52 = sub_255ECF408();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v106[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_255EBCAE0(1702125924, 0xE400000000000000, v106);
      _os_log_impl(&dword_255EA2000, v51, v52, "Column '%s' does not exist. Return all samples.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x259C511E0](v54, -1, -1);
      MEMORY[0x259C511E0](v53, -1, -1);
    }

    v55 = v88;
    v88(v105, v42);
    (*(v91 + 8))(v43, v94);
    (*(v47 + 16))(v96, v45, v102);
  }

  else
  {
    v101 = v43;
    MEMORY[0x28223BE20](v46);
    *(&v79 - 2) = v48;
    *(&v79 - 1) = v44;
    v56 = v87;
    sub_255ECF048();
    v99 = *(v90 + 16);
    v100 = (v90 + 16);
    v99(v86, v56, v93);
    v57 = v92;
    sub_255ECF088();
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v58 = sub_255ECF198();
    __swift_project_value_buffer(v58, qword_27F815898);
    v59 = v84;
    v60 = v102;
    (*(v47 + 16))(v84, v57, v102);
    v61 = v83;
    (v82[2])(v83, v48, v42);
    v62 = sub_255ECF178();
    v63 = sub_255ECF3F8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v106[0] = v98;
      *v64 = 134218242;
      v65 = v79;
      LODWORD(v97) = v63;
      sub_255ECEFD8();
      v66 = v60;
      v67 = v61;
      v68 = sub_255ECEFB8();
      (*(v80 + 8))(v65, v81);
      v69 = *(v47 + 8);
      v69(v59, v66);
      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      sub_255EB8C48(&qword_27F815B00, MEMORY[0x277CC95B8]);
      v70 = sub_255ECF578();
      v72 = v71;
      v55 = v88;
      v88(v67, v42);
      v73 = sub_255EBCAE0(v70, v72, v106);

      *(v64 + 14) = v73;
      _os_log_impl(&dword_255EA2000, v62, v97, "'samplesFromToday' found %ld samples since last plugin run on %s.", v64, 0x16u);
      v74 = v98;
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x259C511E0](v74, -1, -1);
      MEMORY[0x259C511E0](v64, -1, -1);

      v75 = v105;
      v76 = v102;
    }

    else
    {
      v69 = *(v47 + 8);
      v69(v59, v60);

      v55 = v88;
      v88(v61, v42);
      v75 = v105;
      v76 = v60;
    }

    v77 = v87;
    v78 = v93;
    v99(v86, v87, v93);
    sub_255ECF088();
    v69(v92, v76);
    (*(v90 + 8))(v77, v78);
    v55(v75, v42);
    (*(v91 + 8))(v101, v94);
    v48 = v103;
    v44 = v104;
  }

  v55(v44, v42);
  return (v55)(v48, v42);
}

uint64_t sub_255EB7DD0(uint64_t a1, uint64_t (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = sub_255ECEE68();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255EB8BB8(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_255EB87F0(v9);
    v14 = 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v14 = a2(v13, a4);
    (*(v11 + 8))(v13, v10);
  }

  return v14 & 1;
}

uint64_t sub_255EB7FE8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = sub_255ECEE68();
  v11 = sub_255EB8C48(a3, a4);
  return a5(a1, a2, v10, v11) & 1;
}

BOOL sub_255EB80FC(uint64_t a1, uint64_t a2)
{
  sub_255ECEE68();
  sub_255EB8C48(&qword_27F815A58, MEMORY[0x277CC9598]);
  return (sub_255ECF248() & 1) == 0;
}

uint64_t sub_255EB8174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_255ECEE68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255EB8BB8(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_255EB87F0(v6);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    if (sub_255ECEE18())
    {
      v11 = sub_255ECEE28();
      (*(v8 + 8))(v10, v7);
      if (v11)
      {
        return 1;
      }
    }

    else
    {
      (*(v8 + 8))(v10, v7);
    }
  }

  return 0;
}

uint64_t sub_255EB8344(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v31 - v8;
  v10 = sub_255ECEE68();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  sub_255EB8BB8(a1, v9);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_255EB87F0(v9);
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v18 = sub_255ECF198();
    __swift_project_value_buffer(v18, qword_27F815898);
    v19 = sub_255ECF178();
    v20 = sub_255ECF408();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_255EA2000, v19, v20, "Could not find date during filtering.", v21, 2u);
      MEMORY[0x259C511E0](v21, -1, -1);
    }

    v22 = 0;
  }

  else
  {
    v31[1] = v2;
    v23 = v9;
    v24 = *(v11 + 32);
    v24(v16, v23, v10);
    sub_255EB8BB8(v32, v7);
    if (v17(v7, 1, v10) == 1)
    {
      sub_255EB87F0(v7);
      if (qword_27F815890 != -1)
      {
        swift_once();
      }

      v25 = sub_255ECF198();
      __swift_project_value_buffer(v25, qword_27F815898);
      v26 = sub_255ECF178();
      v27 = sub_255ECF408();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_255EA2000, v26, v27, "No previous evaluation date stored. Skip filtering.", v28, 2u);
        MEMORY[0x259C511E0](v28, -1, -1);
      }

      (*(v11 + 8))(v16, v10);
      v22 = 1;
    }

    else
    {
      v24(v14, v7, v10);
      v22 = sub_255ECEE18();
      v29 = *(v11 + 8);
      v29(v14, v10);
      v29(v16, v10);
    }
  }

  return v22 & 1;
}