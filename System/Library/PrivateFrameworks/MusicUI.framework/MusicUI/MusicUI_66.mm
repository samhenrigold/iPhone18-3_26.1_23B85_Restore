uint64_t sub_216D4FCD4(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC40, &qword_2170310E0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for PlaylistTrackLockup(0);
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937F14(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937F14(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
            sub_2166997CC(v37, &qword_27CABEC40, &qword_2170310E0);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937F14(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937F14(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC58, &qword_2170310F8);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D506B0(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC60, &qword_217031100);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for PosterLockup(0);
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937ED4(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937ED4(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
            sub_2166997CC(v37, &qword_27CABEC60, &qword_217031100);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937ED4(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937ED4(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC78, &unk_21705F1F0);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D5108C(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B38, &qword_217031140);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for SearchLandingBrickLockup(0);
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937E94(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937E94(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
            sub_2166997CC(v37, &qword_27CAB9B38, &qword_217031140);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937E94(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937E94(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECB0, &unk_21705F200);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D51A68(uint64_t a1, uint64_t a2)
{
  *&v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECB8, &qword_217031160);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v71[-v4];
  v5 = _s6LockupVMa(0);
  v77 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v75 = &v71[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v84 = &v71[-v8];
  MEMORY[0x28223BE20](v9);
  v74 = &v71[-v10];
  MEMORY[0x28223BE20](v11);
  v79 = &v71[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v71[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v71[-v17];
  v76 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v37 = *(v72 + 16);
    if (v37)
    {
      v38 = v72 + 32;
      v39 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v72 = v21;
      v40 = v73;
      v41 = v76;
      while (1)
      {
        sub_216DD9F00();
        if (v83)
        {
          v78 = v39;
          v42 = v82[0];
          v80 = v82[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v43 = sub_216E68120(v81), (v44 & 1) != 0))
          {
            v45 = v43;

            v46 = *(v77 + 72);
            v47 = v74;
            sub_216DDA0A0(v20[7] + v46 * v45, v74);
            sub_216788110(v81);
            sub_216DDA0A0(v47, v75);
            v39 = v78;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937E54(0, *(v39 + 16) + 1, 1, v39);
              v39 = v67;
            }

            v49 = *(v39 + 16);
            v48 = *(v39 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_216937E54(v48 > 1, v49 + 1, 1, v39);
              v39 = v68;
            }

            sub_216DDA050();
            *(v39 + 16) = v49 + 1;
            sub_216DDA0F4(v75, v39 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + v49 * v46);
          }

          else
          {
            sub_216788110(v81);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v53 = sub_217007CA4();
            __swift_project_value_buffer(v53, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v54 = sub_217007C84();
            v55 = sub_21700ED84();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v81[0] = v57;
              *v56 = v72;
              v58 = sub_2166A85FC(v42, *(&v42 + 1), v81);

              *(v56 + 4) = v58;
              *(v56 + 12) = 2080;
              v59 = sub_21700E394();
              v61 = v60;
              swift_bridgeObjectRelease_n();
              v62 = sub_2166A85FC(v59, v61, v81);

              *(v56 + 14) = v62;
              _os_log_impl(&dword_216679000, v54, v55, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v56, 0x16u);
              swift_arrayDestroy();
              v63 = v57;
              v41 = v76;
              MEMORY[0x21CEA1440](v63, -1, -1);
              v64 = v56;
              v40 = v73;
              MEMORY[0x21CEA1440](v64, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v41 = v76;
            }

            v39 = v78;
          }
        }

        else
        {
          sub_2166A0F18(v82, v81);
          sub_216681AA4(v81, &v80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);
            sub_2166997CC(v40, &qword_27CABECB8, &qword_217031160);
            sub_2169BB698();
            swift_allocError();
            *v69 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v81);
            return v39;
          }

          __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
          v50 = v79;
          sub_216DDA0F4(v40, v79);
          sub_216DDA0A0(v50, v84);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937E54(0, *(v39 + 16) + 1, 1, v39);
            v39 = v65;
          }

          v52 = *(v39 + 16);
          v51 = *(v39 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_216937E54(v51 > 1, v52 + 1, 1, v39);
            v39 = v66;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v81);
          *(v39 + 16) = v52 + 1;
          sub_216DDA0F4(v84, v39 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v52);
        }

        v38 += 48;
        if (!--v37)
        {
          goto LABEL_40;
        }
      }
    }

    v39 = MEMORY[0x277D84F90];
LABEL_40:

    return v39;
  }

  v23 = a1 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
  v24 = *(v77 + 72);
  v78 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(v18, v82);
    v25 = v15;
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v81[0] = v20;
    v26 = sub_216E68120(v82);
    if (__OFADD__(v20[2], (v27 & 1) == 0))
    {
      break;
    }

    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECD0, &qword_217031178);
    if (sub_21700F554())
    {
      v30 = sub_216E68120(v82);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_45;
      }

      v28 = v30;
    }

    v20 = v81[0];
    if (v29)
    {
      v32 = *(v81[0] + 56) + v28 * v24;
      v15 = v25;
      sub_2166CE10C(v25, v32);
      sub_216788110(v82);
      v18 = v78;
      sub_216DDA050();
    }

    else
    {
      *(v81[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
      sub_216788294(v82, v20[6] + 40 * v28);
      v33 = v20[7] + v28 * v24;
      v15 = v25;
      sub_216DDA0F4(v25, v33);
      sub_216788110(v82);
      v18 = v78;
      sub_216DDA050();
      v34 = v20[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_44;
      }

      v20[2] = v36;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D52404(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECD8, &qword_217031180);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for SocialCardLockup(0);
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937E14(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937E14(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
            sub_2166997CC(v37, &qword_27CABECD8, &qword_217031180);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937E14(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937E14(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECF0, &qword_217031198);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D52DE0(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECF8, &qword_2170311A0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  FriendsPageLockup = type metadata accessor for SocialOnboardingFindFriendsPageLockup(0);
  v74 = *(FriendsPageLockup - 8);
  MEMORY[0x28223BE20](FriendsPageLockup);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937DD4(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937DD4(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
            sub_2166997CC(v37, &qword_27CABECF8, &qword_2170311A0);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937DD4(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937DD4(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(FriendsPageLockup + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED10, &qword_2170311B8);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D537BC(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED38, &qword_2170311E0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for SocialProfileHorizontalLockup(0);
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937D54(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937D54(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
            sub_2166997CC(v37, &qword_27CABED38, &qword_2170311E0);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937D54(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937D54(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED50, &qword_2170311F8);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D54198(uint64_t a1, uint64_t a2)
{
  *&v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9868, &qword_21701E2F0);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v71[-v4];
  v5 = type metadata accessor for TextListComponentModel(0);
  v77 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v75 = &v71[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v84 = &v71[-v8];
  MEMORY[0x28223BE20](v9);
  v74 = &v71[-v10];
  MEMORY[0x28223BE20](v11);
  v79 = &v71[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v71[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v71[-v17];
  v76 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v37 = *(v72 + 16);
    if (v37)
    {
      v38 = v72 + 32;
      v39 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v72 = v21;
      v40 = v73;
      v41 = v76;
      while (1)
      {
        sub_216DD9F00();
        if (v83)
        {
          v78 = v39;
          v42 = v82[0];
          v80 = v82[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v43 = sub_216E68120(v81), (v44 & 1) != 0))
          {
            v45 = v43;

            v46 = *(v77 + 72);
            v47 = v74;
            sub_216DDA0A0(v20[7] + v46 * v45, v74);
            sub_216788110(v81);
            sub_216DDA0A0(v47, v75);
            v39 = v78;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937CD4(0, *(v39 + 16) + 1, 1, v39);
              v39 = v67;
            }

            v49 = *(v39 + 16);
            v48 = *(v39 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_216937CD4(v48 > 1, v49 + 1, 1, v39);
              v39 = v68;
            }

            sub_216DDA050();
            *(v39 + 16) = v49 + 1;
            sub_216DDA0F4(v75, v39 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + v49 * v46);
          }

          else
          {
            sub_216788110(v81);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v53 = sub_217007CA4();
            __swift_project_value_buffer(v53, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v54 = sub_217007C84();
            v55 = sub_21700ED84();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v81[0] = v57;
              *v56 = v72;
              v58 = sub_2166A85FC(v42, *(&v42 + 1), v81);

              *(v56 + 4) = v58;
              *(v56 + 12) = 2080;
              v59 = sub_21700E394();
              v61 = v60;
              swift_bridgeObjectRelease_n();
              v62 = sub_2166A85FC(v59, v61, v81);

              *(v56 + 14) = v62;
              _os_log_impl(&dword_216679000, v54, v55, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v56, 0x16u);
              swift_arrayDestroy();
              v63 = v57;
              v41 = v76;
              MEMORY[0x21CEA1440](v63, -1, -1);
              v64 = v56;
              v40 = v73;
              MEMORY[0x21CEA1440](v64, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v41 = v76;
            }

            v39 = v78;
          }
        }

        else
        {
          sub_2166A0F18(v82, v81);
          sub_216681AA4(v81, &v80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);
            sub_2166997CC(v40, &qword_27CAB9868, &qword_21701E2F0);
            sub_2169BB698();
            swift_allocError();
            *v69 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v81);
            return v39;
          }

          __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
          v50 = v79;
          sub_216DDA0F4(v40, v79);
          sub_216DDA0A0(v50, v84);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937CD4(0, *(v39 + 16) + 1, 1, v39);
            v39 = v65;
          }

          v52 = *(v39 + 16);
          v51 = *(v39 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_216937CD4(v51 > 1, v52 + 1, 1, v39);
            v39 = v66;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v81);
          *(v39 + 16) = v52 + 1;
          sub_216DDA0F4(v84, v39 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v52);
        }

        v38 += 48;
        if (!--v37)
        {
          goto LABEL_40;
        }
      }
    }

    v39 = MEMORY[0x277D84F90];
LABEL_40:

    return v39;
  }

  v23 = a1 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
  v24 = *(v77 + 72);
  v78 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(v18, v82);
    v25 = v15;
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v81[0] = v20;
    v26 = sub_216E68120(v82);
    if (__OFADD__(v20[2], (v27 & 1) == 0))
    {
      break;
    }

    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED88, &unk_21705F230);
    if (sub_21700F554())
    {
      v30 = sub_216E68120(v82);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_45;
      }

      v28 = v30;
    }

    v20 = v81[0];
    if (v29)
    {
      v32 = *(v81[0] + 56) + v28 * v24;
      v15 = v25;
      sub_2166CE10C(v25, v32);
      sub_216788110(v82);
      v18 = v78;
      sub_216DDA050();
    }

    else
    {
      *(v81[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
      sub_216788294(v82, v20[6] + 40 * v28);
      v33 = v20[7] + v28 * v24;
      v15 = v25;
      sub_216DDA0F4(v25, v33);
      sub_216788110(v82);
      v18 = v78;
      sub_216DDA050();
      v34 = v20[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_44;
      }

      v20[2] = v36;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D54B34(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED90, &qword_217031230);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for TopSearchLockup(0);
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937C94(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937C94(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
            sub_2166997CC(v37, &qword_27CABED90, &qword_217031230);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937C94(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937C94(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDA8, &qword_217031248);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D55510(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDD0, &qword_217031270);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for VerticalVideoLockup(0);
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937C54(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937C54(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
            sub_2166997CC(v37, &qword_27CABEDD0, &qword_217031270);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937C54(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937C54(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDE8, &unk_21705F240);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D55EEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
  OUTLINED_FUNCTION_181();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21701D820;
  OUTLINED_FUNCTION_0_1();
  v1 = OUTLINED_FUNCTION_74_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_65_0();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = &off_282914240;
  swift_unknownObjectWeakAssign();
  *(v0 + 32) = v3;
  return v0;
}

void sub_216D55F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v122 = a2;
  v123 = a3;
  v121 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v92 - v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A30, &qword_21705E9D8);
  v120 = *(v124 - 1);
  MEMORY[0x28223BE20](v124);
  v119 = &v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A38, &unk_21705E9E0);
  v117 = *(v8 - 8);
  v118 = v8;
  MEMORY[0x28223BE20](v8);
  v116 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E8, &unk_217039480);
  v114 = *(v10 - 8);
  v115 = v10;
  MEMORY[0x28223BE20](v10);
  v113 = &v92 - v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180, &qword_21701C770);
  MEMORY[0x28223BE20](v112);
  v111 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v110 = &v92 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E0, &qword_217039478);
  v126 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v92 - v15;
  v107 = type metadata accessor for BackgroundConfiguration(0);
  MEMORY[0x28223BE20](v107);
  v106 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v105 = &v92 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v92 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D8, &unk_217039468);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v92 - v20;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v98);
  v97 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v96 = &v92 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D0, &qword_217039460);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v92 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A40, &unk_21705E9F0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v92 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D28, &qword_217057640);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v92 - v31;
  v33 = *(*v3 + 96);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30, &qword_2170576A0);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v34);
  sub_216DD9F00();
  sub_217007DA4();
  sub_2166997CC(v32, &qword_27CAC6D28, &qword_217057640);
  (*(v26 + 32))(v4 + v33, v28, v25);
  v35 = *(*v4 + 104);
  aBlock = 0;
  v128 = 0;
  v129[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0660, &unk_217038F18);
  v36 = v93;
  sub_217007DA4();
  (*(v94 + 32))(v4 + v35, v36, v95);
  v37 = *(*v4 + 112);
  v38 = type metadata accessor for ToolbarConfiguration(0);
  v39 = v96;
  __swift_storeEnumTagSinglePayload(v96, 1, 1, v38);
  sub_216DD9F00();
  v40 = v99;
  sub_217007DA4();
  sub_2166997CC(v39, &qword_27CAB7930, &qword_21701A250);
  (*(v100 + 32))(v4 + v37, v40, v101);
  v41 = *(*v4 + 128);
  LOBYTE(aBlock) = 0;
  v42 = v102;
  sub_217007DA4();
  v43 = *(v103 + 32);
  v44 = v104;
  v43(v4 + v41, v42, v104);
  *(v4 + *(*v4 + 136)) = 0;
  v45 = *(*v4 + 144);
  type metadata accessor for AutoUpdatingPageMapper();
  swift_allocObject();
  *(v4 + v45) = sub_216E593C8();
  v46 = *(*v4 + 184);
  LOBYTE(aBlock) = 1;
  sub_217007DA4();
  v43(v4 + v46, v42, v44);
  v47 = *(*v4 + 192);
  v48 = v105;
  swift_storeEnumTagMultiPayload();
  v49 = v106;
  sub_216DDA0A0(v48, v106);
  v50 = v108;
  sub_217007DA4();
  sub_216DDA050();
  v51 = *(v126 + 32);
  v126 += 32;
  v52 = v4 + v47;
  v53 = v50;
  v54 = v50;
  v55 = v109;
  v51(v52, v53, v109);
  v56 = *(*v4 + 200);
  swift_storeEnumTagMultiPayload();
  sub_216DDA0A0(v48, v49);
  sub_217007DA4();
  sub_216DDA050();
  v51(v4 + v56, v54, v55);
  v57 = *(*v4 + 208);
  v58 = sub_2170080D4();
  v59 = v110;
  __swift_storeEnumTagSinglePayload(v110, 1, 1, v58);
  sub_216DD9F00();
  v60 = v113;
  sub_217007DA4();
  sub_2166997CC(v59, &qword_27CAB9180, &qword_21701C770);
  (*(v114 + 32))(v4 + v57, v60, v115);
  v61 = *(*v4 + 216);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  __swift_storeEnumTagSinglePayload(v4 + v61, 1, 1, v62);
  *(v4 + *(*v4 + 240)) = 0;
  v63 = *(*v4 + 248);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  __swift_storeEnumTagSinglePayload(v4 + v63, 1, 1, v126);
  *(v4 + *(*v4 + 256)) = MEMORY[0x277D84F90];
  v64 = *(*v4 + 264);
  type metadata accessor for AsyncQueue(0);
  swift_allocObject();
  *(v4 + v64) = sub_216CA9FD4();
  *(v4 + *(*v4 + 272)) = 0;
  swift_weakInit();
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 304) + 8) = 0;
  swift_unknownObjectWeakInit();
  v65 = *(*v4 + 312);
  type metadata accessor for MusicPageMetricsProvider(0);
  v66 = swift_allocObject();
  v67 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  v68 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v66 + v67, 1, 1, v68);
  *(v4 + v65) = v66;
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 160)) = v123;
  *(v4 + *(*v4 + 224)) = v121;
  sub_216DD9F00();
  sub_21700DAB4();
  v69 = type metadata accessor for ObjectGraph(0);

  sub_21700E094();
  *(v4 + *(*v4 + 232)) = aBlock;
  sub_21700DDB4();

  v115 = v69;
  sub_21700E094();

  *(v4 + *(*v4 + 120)) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A48, &qword_21705EA00);
  swift_allocObject();

  *(v4 + *(*v4 + 168)) = sub_216CF258C(v70);
  type metadata accessor for SocialBadgingRequestCoordinator(0);

  sub_21700E094();

  *(v4 + *(*v4 + 176)) = aBlock;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A50, &qword_21705EA08);
  v71 = MEMORY[0x277D21A98];
  sub_2166D9530(&qword_280E2A330, &qword_27CAC8A50, &qword_21705EA08, MEMORY[0x277D21A98]);

  sub_21700D1D4();
  v72 = v116;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v117 + 8))(v72, v118);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A58, &unk_21705EA10);
  sub_2166D9530(&qword_280E2A318, &qword_27CAC8A58, &unk_21705EA10, v71);
  sub_21700D1D4();
  v73 = v119;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v120 + 8))(v73, v124);
  type metadata accessor for AppLifeCycleObserver();
  sub_21700E094();
  v74 = v125;
  v120 = aBlock;
  sub_2166B5494(v4, &unk_282935188, &unk_2829351B0, sub_216DD3668, sub_2166EFCD4, v75, v76, v77, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
  __swift_storeEnumTagSinglePayload(v74, 0, 1, v126);
  swift_beginAccess();
  sub_216DD9404();
  swift_endAccess();
  v78 = sub_216D55EEC();
  v79 = sub_2166BF3C8(v78);
  v80 = 0;
  v81 = *(*v4 + 256);
  v125 = (v78 & 0xFFFFFFFFFFFFFF8);
  v126 = v78 & 0xC000000000000001;
  v124 = v129;
  while (1)
  {
    if (v79 == v80)
    {

      sub_2166997CC(v122, &qword_27CAB6AB8, &unk_217013E10);
      return;
    }

    if (v126)
    {
      v82 = MEMORY[0x21CEA0220](v80, v78);
    }

    else
    {
      if (v80 >= *(v125 + 2))
      {
        goto LABEL_16;
      }

      v82 = *(v78 + 8 * v80 + 32);
    }

    if (__OFADD__(v80, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v84 = *(Strong + 16);
      swift_unknownObjectRelease();
      v85 = [objc_opt_self() defaultCenter];
      v86 = swift_allocObject();
      swift_weakInit();
      v87 = swift_allocObject();
      *(v87 + 16) = v86;
      *(v87 + 24) = v82;
      v129[2] = sub_216DD3590;
      v129[3] = v87;
      aBlock = MEMORY[0x277D85DD0];
      v128 = 1107296256;
      v129[0] = sub_216D5D040;
      v129[1] = &block_descriptor_37;
      v88 = _Block_copy(&aBlock);
      v89 = v84;

      v90 = [v85 addObserverForName:v89 object:0 queue:0 usingBlock:v88];
      _Block_release(v88);

      v91 = swift_beginAccess();
      MEMORY[0x21CE9F610](v91);
      if (*((*(v4 + v81) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v81) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      swift_endAccess();
    }

    else
    {
    }

    ++v80;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_216D57488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v122 = a2;
  v123 = a3;
  v121 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v92 - v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9400, &qword_21705FBE8);
  v120 = *(v124 - 1);
  MEMORY[0x28223BE20](v124);
  v119 = &v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9408, &unk_21705FBF0);
  v117 = *(v8 - 8);
  v118 = v8;
  MEMORY[0x28223BE20](v8);
  v116 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E8, &unk_217039480);
  v114 = *(v10 - 8);
  v115 = v10;
  MEMORY[0x28223BE20](v10);
  v113 = &v92 - v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180, &qword_21701C770);
  MEMORY[0x28223BE20](v112);
  v111 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v110 = &v92 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E0, &qword_217039478);
  v126 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v92 - v15;
  v107 = type metadata accessor for BackgroundConfiguration(0);
  MEMORY[0x28223BE20](v107);
  v106 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v105 = &v92 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v92 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D8, &unk_217039468);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v92 - v20;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v98);
  v97 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v96 = &v92 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D0, &qword_217039460);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v92 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9138, &qword_21701C728);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v92 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91F0, &qword_21701C7E0);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v92 - v31;
  v33 = *(*v3 + 96);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9200, &qword_21701C840);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v34);
  sub_216DD9F00();
  sub_217007DA4();
  sub_2166997CC(v32, &qword_27CAB91F0, &qword_21701C7E0);
  (*(v26 + 32))(v4 + v33, v28, v25);
  v35 = *(*v4 + 104);
  aBlock = 0;
  v128 = 0;
  v129[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0660, &unk_217038F18);
  v36 = v93;
  sub_217007DA4();
  (*(v94 + 32))(v4 + v35, v36, v95);
  v37 = *(*v4 + 112);
  v38 = type metadata accessor for ToolbarConfiguration(0);
  v39 = v96;
  __swift_storeEnumTagSinglePayload(v96, 1, 1, v38);
  sub_216DD9F00();
  v40 = v99;
  sub_217007DA4();
  sub_2166997CC(v39, &qword_27CAB7930, &qword_21701A250);
  (*(v100 + 32))(v4 + v37, v40, v101);
  v41 = *(*v4 + 128);
  LOBYTE(aBlock) = 0;
  v42 = v102;
  sub_217007DA4();
  v43 = *(v103 + 32);
  v44 = v104;
  v43(v4 + v41, v42, v104);
  *(v4 + *(*v4 + 136)) = 0;
  v45 = *(*v4 + 144);
  type metadata accessor for AutoUpdatingPageMapper();
  swift_allocObject();
  *(v4 + v45) = sub_216E593C8();
  v46 = *(*v4 + 184);
  LOBYTE(aBlock) = 1;
  sub_217007DA4();
  v43(v4 + v46, v42, v44);
  v47 = *(*v4 + 192);
  v48 = v105;
  swift_storeEnumTagMultiPayload();
  v49 = v106;
  sub_216DDA0A0(v48, v106);
  v50 = v108;
  sub_217007DA4();
  sub_216DDA050();
  v51 = *(v126 + 32);
  v126 += 32;
  v52 = v4 + v47;
  v53 = v50;
  v54 = v50;
  v55 = v109;
  v51(v52, v53, v109);
  v56 = *(*v4 + 200);
  swift_storeEnumTagMultiPayload();
  sub_216DDA0A0(v48, v49);
  sub_217007DA4();
  sub_216DDA050();
  v51(v4 + v56, v54, v55);
  v57 = *(*v4 + 208);
  v58 = sub_2170080D4();
  v59 = v110;
  __swift_storeEnumTagSinglePayload(v110, 1, 1, v58);
  sub_216DD9F00();
  v60 = v113;
  sub_217007DA4();
  sub_2166997CC(v59, &qword_27CAB9180, &qword_21701C770);
  (*(v114 + 32))(v4 + v57, v60, v115);
  v61 = *(*v4 + 216);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  __swift_storeEnumTagSinglePayload(v4 + v61, 1, 1, v62);
  *(v4 + *(*v4 + 240)) = 0;
  v63 = *(*v4 + 248);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  __swift_storeEnumTagSinglePayload(v4 + v63, 1, 1, v126);
  *(v4 + *(*v4 + 256)) = MEMORY[0x277D84F90];
  v64 = *(*v4 + 264);
  type metadata accessor for AsyncQueue(0);
  swift_allocObject();
  *(v4 + v64) = sub_216CA9FD4();
  *(v4 + *(*v4 + 272)) = 0;
  swift_weakInit();
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 304) + 8) = 0;
  swift_unknownObjectWeakInit();
  v65 = *(*v4 + 312);
  type metadata accessor for MusicPageMetricsProvider(0);
  v66 = swift_allocObject();
  v67 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  v68 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v66 + v67, 1, 1, v68);
  *(v4 + v65) = v66;
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 160)) = v123;
  *(v4 + *(*v4 + 224)) = v121;
  sub_216DD9F00();
  sub_21700DAB4();
  v69 = type metadata accessor for ObjectGraph(0);

  sub_21700E094();
  *(v4 + *(*v4 + 232)) = aBlock;
  sub_21700DDB4();

  v115 = v69;
  sub_21700E094();

  *(v4 + *(*v4 + 120)) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9410, &qword_21705FC08);
  swift_allocObject();

  *(v4 + *(*v4 + 168)) = sub_216CF2704(v70);
  type metadata accessor for SocialBadgingRequestCoordinator(0);

  sub_21700E094();

  *(v4 + *(*v4 + 176)) = aBlock;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9418, &qword_21705FC10);
  v71 = MEMORY[0x277D21A98];
  sub_2166D9530(&qword_27CAC9420, &qword_27CAC9418, &qword_21705FC10, MEMORY[0x277D21A98]);

  sub_21700D1D4();
  v72 = v116;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v117 + 8))(v72, v118);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9428, &qword_21705FC18);
  sub_2166D9530(&qword_27CAC9430, &qword_27CAC9428, &qword_21705FC18, v71);
  sub_21700D1D4();
  v73 = v119;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v120 + 8))(v73, v124);
  type metadata accessor for AppLifeCycleObserver();
  sub_21700E094();
  v74 = v125;
  v120 = aBlock;
  sub_2166B5494(v4, &unk_282936498, &unk_2829364C0, sub_216DD8090, sub_2168E4C64, v75, v76, v77, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
  __swift_storeEnumTagSinglePayload(v74, 0, 1, v126);
  swift_beginAccess();
  sub_216DD9404();
  swift_endAccess();
  v78 = sub_216D55EEC();
  v79 = sub_2166BF3C8(v78);
  v80 = 0;
  v81 = *(*v4 + 256);
  v125 = (v78 & 0xFFFFFFFFFFFFFF8);
  v126 = v78 & 0xC000000000000001;
  v124 = v129;
  while (1)
  {
    if (v79 == v80)
    {

      sub_2166997CC(v122, &qword_27CAC5B38, &unk_217072590);
      return;
    }

    if (v126)
    {
      v82 = MEMORY[0x21CEA0220](v80, v78);
    }

    else
    {
      if (v80 >= *(v125 + 2))
      {
        goto LABEL_16;
      }

      v82 = *(v78 + 8 * v80 + 32);
    }

    if (__OFADD__(v80, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v84 = *(Strong + 16);
      swift_unknownObjectRelease();
      v85 = [objc_opt_self() defaultCenter];
      v86 = swift_allocObject();
      swift_weakInit();
      v87 = swift_allocObject();
      *(v87 + 16) = v86;
      *(v87 + 24) = v82;
      v129[2] = sub_216DD7FB8;
      v129[3] = v87;
      aBlock = MEMORY[0x277D85DD0];
      v128 = 1107296256;
      v129[0] = sub_216D5D040;
      v129[1] = &block_descriptor_810;
      v88 = _Block_copy(&aBlock);
      v89 = v84;

      v90 = [v85 addObserverForName:v89 object:0 queue:0 usingBlock:v88];
      _Block_release(v88);

      v91 = swift_beginAccess();
      MEMORY[0x21CE9F610](v91);
      if (*((*(v4 + v81) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v81) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      swift_endAccess();
    }

    else
    {
    }

    ++v80;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_216D58974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v122 = a2;
  v123 = a3;
  v121 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v92 - v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9098, &qword_21705F5A8);
  v120 = *(v124 - 1);
  MEMORY[0x28223BE20](v124);
  v119 = &v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90A0, &qword_21705F5B0);
  v117 = *(v8 - 8);
  v118 = v8;
  MEMORY[0x28223BE20](v8);
  v116 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E8, &unk_217039480);
  v114 = *(v10 - 8);
  v115 = v10;
  MEMORY[0x28223BE20](v10);
  v113 = &v92 - v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180, &qword_21701C770);
  MEMORY[0x28223BE20](v112);
  v111 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v110 = &v92 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E0, &qword_217039478);
  v126 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v92 - v15;
  v107 = type metadata accessor for BackgroundConfiguration(0);
  MEMORY[0x28223BE20](v107);
  v106 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v105 = &v92 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v92 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D8, &unk_217039468);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v92 - v20;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v98);
  v97 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v96 = &v92 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D0, &qword_217039460);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v92 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90A8, &qword_21705F5B8);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v92 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EF8, &qword_21705F360);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v92 - v31;
  v33 = *(*v3 + 96);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F00, &qword_21705F368);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v34);
  sub_216DD9F00();
  sub_217007DA4();
  sub_2166997CC(v32, &qword_27CAC8EF8, &qword_21705F360);
  (*(v26 + 32))(v4 + v33, v28, v25);
  v35 = *(*v4 + 104);
  aBlock = 0;
  v128 = 0;
  v129[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0660, &unk_217038F18);
  v36 = v93;
  sub_217007DA4();
  (*(v94 + 32))(v4 + v35, v36, v95);
  v37 = *(*v4 + 112);
  v38 = type metadata accessor for ToolbarConfiguration(0);
  v39 = v96;
  __swift_storeEnumTagSinglePayload(v96, 1, 1, v38);
  sub_216DD9F00();
  v40 = v99;
  sub_217007DA4();
  sub_2166997CC(v39, &qword_27CAB7930, &qword_21701A250);
  (*(v100 + 32))(v4 + v37, v40, v101);
  v41 = *(*v4 + 128);
  LOBYTE(aBlock) = 0;
  v42 = v102;
  sub_217007DA4();
  v43 = *(v103 + 32);
  v44 = v104;
  v43(v4 + v41, v42, v104);
  *(v4 + *(*v4 + 136)) = 0;
  v45 = *(*v4 + 144);
  type metadata accessor for AutoUpdatingPageMapper();
  swift_allocObject();
  *(v4 + v45) = sub_216E593C8();
  v46 = *(*v4 + 184);
  LOBYTE(aBlock) = 1;
  sub_217007DA4();
  v43(v4 + v46, v42, v44);
  v47 = *(*v4 + 192);
  v48 = v105;
  swift_storeEnumTagMultiPayload();
  v49 = v106;
  sub_216DDA0A0(v48, v106);
  v50 = v108;
  sub_217007DA4();
  sub_216DDA050();
  v51 = *(v126 + 32);
  v126 += 32;
  v52 = v4 + v47;
  v53 = v50;
  v54 = v50;
  v55 = v109;
  v51(v52, v53, v109);
  v56 = *(*v4 + 200);
  swift_storeEnumTagMultiPayload();
  sub_216DDA0A0(v48, v49);
  sub_217007DA4();
  sub_216DDA050();
  v51(v4 + v56, v54, v55);
  v57 = *(*v4 + 208);
  v58 = sub_2170080D4();
  v59 = v110;
  __swift_storeEnumTagSinglePayload(v110, 1, 1, v58);
  sub_216DD9F00();
  v60 = v113;
  sub_217007DA4();
  sub_2166997CC(v59, &qword_27CAB9180, &qword_21701C770);
  (*(v114 + 32))(v4 + v57, v60, v115);
  v61 = *(*v4 + 216);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  __swift_storeEnumTagSinglePayload(v4 + v61, 1, 1, v62);
  *(v4 + *(*v4 + 240)) = 0;
  v63 = *(*v4 + 248);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  __swift_storeEnumTagSinglePayload(v4 + v63, 1, 1, v126);
  *(v4 + *(*v4 + 256)) = MEMORY[0x277D84F90];
  v64 = *(*v4 + 264);
  type metadata accessor for AsyncQueue(0);
  swift_allocObject();
  *(v4 + v64) = sub_216CA9FD4();
  *(v4 + *(*v4 + 272)) = 0;
  swift_weakInit();
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 304) + 8) = 0;
  swift_unknownObjectWeakInit();
  v65 = *(*v4 + 312);
  type metadata accessor for MusicPageMetricsProvider(0);
  v66 = swift_allocObject();
  v67 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  v68 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v66 + v67, 1, 1, v68);
  *(v4 + v65) = v66;
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 160)) = v123;
  *(v4 + *(*v4 + 224)) = v121;
  sub_216DD9F00();
  sub_21700DAB4();
  v69 = type metadata accessor for ObjectGraph(0);

  sub_21700E094();
  *(v4 + *(*v4 + 232)) = aBlock;
  sub_21700DDB4();

  v115 = v69;
  sub_21700E094();

  *(v4 + *(*v4 + 120)) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90B0, &qword_21705F5C0);
  swift_allocObject();

  *(v4 + *(*v4 + 168)) = sub_216CF287C(v70);
  type metadata accessor for SocialBadgingRequestCoordinator(0);

  sub_21700E094();

  *(v4 + *(*v4 + 176)) = aBlock;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90B8, &qword_21705F5C8);
  v71 = MEMORY[0x277D21A98];
  sub_2166D9530(&qword_280E2A338, &qword_27CAC90B8, &qword_21705F5C8, MEMORY[0x277D21A98]);

  sub_21700D1D4();
  v72 = v116;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v117 + 8))(v72, v118);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90C0, &qword_21705F5D0);
  sub_2166D9530(&qword_280E2A328, &qword_27CAC90C0, &qword_21705F5D0, v71);
  sub_21700D1D4();
  v73 = v119;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v120 + 8))(v73, v124);
  type metadata accessor for AppLifeCycleObserver();
  sub_21700E094();
  v74 = v125;
  v120 = aBlock;
  sub_2166B5494(v4, &unk_282935BB0, &unk_282935BD8, sub_216DD6CD4, sub_2168E4C64, v75, v76, v77, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
  __swift_storeEnumTagSinglePayload(v74, 0, 1, v126);
  swift_beginAccess();
  sub_216DD9404();
  swift_endAccess();
  v78 = sub_216D55EEC();
  v79 = sub_2166BF3C8(v78);
  v80 = 0;
  v81 = *(*v4 + 256);
  v125 = (v78 & 0xFFFFFFFFFFFFFF8);
  v126 = v78 & 0xC000000000000001;
  v124 = v129;
  while (1)
  {
    if (v79 == v80)
    {

      sub_2166997CC(v122, &qword_27CAC8058, &qword_21705C110);
      return;
    }

    if (v126)
    {
      v82 = MEMORY[0x21CEA0220](v80, v78);
    }

    else
    {
      if (v80 >= *(v125 + 2))
      {
        goto LABEL_16;
      }

      v82 = *(v78 + 8 * v80 + 32);
    }

    if (__OFADD__(v80, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v84 = *(Strong + 16);
      swift_unknownObjectRelease();
      v85 = [objc_opt_self() defaultCenter];
      v86 = swift_allocObject();
      swift_weakInit();
      v87 = swift_allocObject();
      *(v87 + 16) = v86;
      *(v87 + 24) = v82;
      v129[2] = sub_216DD6BFC;
      v129[3] = v87;
      aBlock = MEMORY[0x277D85DD0];
      v128 = 1107296256;
      v129[0] = sub_216D5D040;
      v129[1] = &block_descriptor_445;
      v88 = _Block_copy(&aBlock);
      v89 = v84;

      v90 = [v85 addObserverForName:v89 object:0 queue:0 usingBlock:v88];
      _Block_release(v88);

      v91 = swift_beginAccess();
      MEMORY[0x21CE9F610](v91);
      if (*((*(v4 + v81) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v81) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      swift_endAccess();
    }

    else
    {
    }

    ++v80;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_216D59E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v122 = a2;
  v123 = a3;
  v121 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v92 - v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9148, &qword_21705F718);
  v120 = *(v124 - 1);
  MEMORY[0x28223BE20](v124);
  v119 = &v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9150, &qword_21705F720);
  v117 = *(v8 - 8);
  v118 = v8;
  MEMORY[0x28223BE20](v8);
  v116 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E8, &unk_217039480);
  v114 = *(v10 - 8);
  v115 = v10;
  MEMORY[0x28223BE20](v10);
  v113 = &v92 - v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180, &qword_21701C770);
  MEMORY[0x28223BE20](v112);
  v111 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v110 = &v92 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E0, &qword_217039478);
  v126 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v92 - v15;
  v107 = type metadata accessor for BackgroundConfiguration(0);
  MEMORY[0x28223BE20](v107);
  v106 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v105 = &v92 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v92 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D8, &unk_217039468);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v92 - v20;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v98);
  v97 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v96 = &v92 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D0, &qword_217039460);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v92 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9158, &unk_21705F728);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v92 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE088, &qword_21702DA60);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v92 - v31;
  v33 = *(*v3 + 96);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0, &qword_21702DAC0);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v34);
  sub_216DD9F00();
  sub_217007DA4();
  sub_2166997CC(v32, &qword_27CABE088, &qword_21702DA60);
  (*(v26 + 32))(v4 + v33, v28, v25);
  v35 = *(*v4 + 104);
  aBlock = 0;
  v128 = 0;
  v129[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0660, &unk_217038F18);
  v36 = v93;
  sub_217007DA4();
  (*(v94 + 32))(v4 + v35, v36, v95);
  v37 = *(*v4 + 112);
  v38 = type metadata accessor for ToolbarConfiguration(0);
  v39 = v96;
  __swift_storeEnumTagSinglePayload(v96, 1, 1, v38);
  sub_216DD9F00();
  v40 = v99;
  sub_217007DA4();
  sub_2166997CC(v39, &qword_27CAB7930, &qword_21701A250);
  (*(v100 + 32))(v4 + v37, v40, v101);
  v41 = *(*v4 + 128);
  LOBYTE(aBlock) = 0;
  v42 = v102;
  sub_217007DA4();
  v43 = *(v103 + 32);
  v44 = v104;
  v43(v4 + v41, v42, v104);
  *(v4 + *(*v4 + 136)) = 0;
  v45 = *(*v4 + 144);
  type metadata accessor for AutoUpdatingPageMapper();
  swift_allocObject();
  *(v4 + v45) = sub_216E593C8();
  v46 = *(*v4 + 184);
  LOBYTE(aBlock) = 1;
  sub_217007DA4();
  v43(v4 + v46, v42, v44);
  v47 = *(*v4 + 192);
  v48 = v105;
  swift_storeEnumTagMultiPayload();
  v49 = v106;
  sub_216DDA0A0(v48, v106);
  v50 = v108;
  sub_217007DA4();
  sub_216DDA050();
  v51 = *(v126 + 32);
  v126 += 32;
  v52 = v4 + v47;
  v53 = v50;
  v54 = v50;
  v55 = v109;
  v51(v52, v53, v109);
  v56 = *(*v4 + 200);
  swift_storeEnumTagMultiPayload();
  sub_216DDA0A0(v48, v49);
  sub_217007DA4();
  sub_216DDA050();
  v51(v4 + v56, v54, v55);
  v57 = *(*v4 + 208);
  v58 = sub_2170080D4();
  v59 = v110;
  __swift_storeEnumTagSinglePayload(v110, 1, 1, v58);
  sub_216DD9F00();
  v60 = v113;
  sub_217007DA4();
  sub_2166997CC(v59, &qword_27CAB9180, &qword_21701C770);
  (*(v114 + 32))(v4 + v57, v60, v115);
  v61 = *(*v4 + 216);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  __swift_storeEnumTagSinglePayload(v4 + v61, 1, 1, v62);
  *(v4 + *(*v4 + 240)) = 0;
  v63 = *(*v4 + 248);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  __swift_storeEnumTagSinglePayload(v4 + v63, 1, 1, v126);
  *(v4 + *(*v4 + 256)) = MEMORY[0x277D84F90];
  v64 = *(*v4 + 264);
  type metadata accessor for AsyncQueue(0);
  swift_allocObject();
  *(v4 + v64) = sub_216CA9FD4();
  *(v4 + *(*v4 + 272)) = 0;
  swift_weakInit();
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 304) + 8) = 0;
  swift_unknownObjectWeakInit();
  v65 = *(*v4 + 312);
  type metadata accessor for MusicPageMetricsProvider(0);
  v66 = swift_allocObject();
  v67 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  v68 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v66 + v67, 1, 1, v68);
  *(v4 + v65) = v66;
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 160)) = v123;
  *(v4 + *(*v4 + 224)) = v121;
  sub_216DD9F00();
  sub_21700DAB4();
  v69 = type metadata accessor for ObjectGraph(0);

  sub_21700E094();
  *(v4 + *(*v4 + 232)) = aBlock;
  sub_21700DDB4();

  v115 = v69;
  sub_21700E094();

  *(v4 + *(*v4 + 120)) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9160, &qword_21705F738);
  swift_allocObject();

  *(v4 + *(*v4 + 168)) = sub_216CF29F4(v70);
  type metadata accessor for SocialBadgingRequestCoordinator(0);

  sub_21700E094();

  *(v4 + *(*v4 + 176)) = aBlock;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9168, &qword_21705F740);
  v71 = MEMORY[0x277D21A98];
  sub_2166D9530(&qword_27CAC9170, &qword_27CAC9168, &qword_21705F740, MEMORY[0x277D21A98]);

  sub_21700D1D4();
  v72 = v116;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v117 + 8))(v72, v118);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9178, &qword_21705F748);
  sub_2166D9530(&qword_27CAC9180, &qword_27CAC9178, &qword_21705F748, v71);
  sub_21700D1D4();
  v73 = v119;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v120 + 8))(v73, v124);
  type metadata accessor for AppLifeCycleObserver();
  sub_21700E094();
  v74 = v125;
  v120 = aBlock;
  sub_2166B5494(v4, &unk_282935E58, &unk_282935E80, sub_216DD7448, sub_2168E4C64, v75, v76, v77, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
  __swift_storeEnumTagSinglePayload(v74, 0, 1, v126);
  swift_beginAccess();
  sub_216DD9404();
  swift_endAccess();
  v78 = sub_216D55EEC();
  v79 = sub_2166BF3C8(v78);
  v80 = 0;
  v81 = *(*v4 + 256);
  v125 = (v78 & 0xFFFFFFFFFFFFFF8);
  v126 = v78 & 0xC000000000000001;
  v124 = v129;
  while (1)
  {
    if (v79 == v80)
    {

      sub_2166997CC(v122, &qword_27CAC4BF8, &qword_21704F460);
      return;
    }

    if (v126)
    {
      v82 = MEMORY[0x21CEA0220](v80, v78);
    }

    else
    {
      if (v80 >= *(v125 + 2))
      {
        goto LABEL_16;
      }

      v82 = *(v78 + 8 * v80 + 32);
    }

    if (__OFADD__(v80, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v84 = *(Strong + 16);
      swift_unknownObjectRelease();
      v85 = [objc_opt_self() defaultCenter];
      v86 = swift_allocObject();
      swift_weakInit();
      v87 = swift_allocObject();
      *(v87 + 16) = v86;
      *(v87 + 24) = v82;
      v129[2] = sub_216DD7370;
      v129[3] = v87;
      aBlock = MEMORY[0x277D85DD0];
      v128 = 1107296256;
      v129[0] = sub_216D5D040;
      v129[1] = &block_descriptor_554;
      v88 = _Block_copy(&aBlock);
      v89 = v84;

      v90 = [v85 addObserverForName:v89 object:0 queue:0 usingBlock:v88];
      _Block_release(v88);

      v91 = swift_beginAccess();
      MEMORY[0x21CE9F610](v91);
      if (*((*(v4 + v81) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v81) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      swift_endAccess();
    }

    else
    {
    }

    ++v80;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_216D5B34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v122 = a2;
  v123 = a3;
  v121 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v92 - v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9868, &qword_217060388);
  v120 = *(v124 - 1);
  MEMORY[0x28223BE20](v124);
  v119 = &v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9870, &unk_217060390);
  v117 = *(v8 - 8);
  v118 = v8;
  MEMORY[0x28223BE20](v8);
  v116 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E8, &unk_217039480);
  v114 = *(v10 - 8);
  v115 = v10;
  MEMORY[0x28223BE20](v10);
  v113 = &v92 - v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180, &qword_21701C770);
  MEMORY[0x28223BE20](v112);
  v111 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v110 = &v92 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E0, &qword_217039478);
  v126 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v92 - v15;
  v107 = type metadata accessor for BackgroundConfiguration(0);
  MEMORY[0x28223BE20](v107);
  v106 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v105 = &v92 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v92 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D8, &unk_217039468);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v92 - v20;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v98);
  v97 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v96 = &v92 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D0, &qword_217039460);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v92 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EB8, &qword_21705B8A8);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v92 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D60, &unk_217060140);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v92 - v31;
  v33 = *(*v3 + 96);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0F8, qword_21702DC18);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v34);
  sub_216DD9F00();
  sub_217007DA4();
  sub_2166997CC(v32, &qword_27CAC7D60, &unk_217060140);
  (*(v26 + 32))(v4 + v33, v28, v25);
  v35 = *(*v4 + 104);
  aBlock = 0;
  v128 = 0;
  v129[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0660, &unk_217038F18);
  v36 = v93;
  sub_217007DA4();
  (*(v94 + 32))(v4 + v35, v36, v95);
  v37 = *(*v4 + 112);
  v38 = type metadata accessor for ToolbarConfiguration(0);
  v39 = v96;
  __swift_storeEnumTagSinglePayload(v96, 1, 1, v38);
  sub_216DD9F00();
  v40 = v99;
  sub_217007DA4();
  sub_2166997CC(v39, &qword_27CAB7930, &qword_21701A250);
  (*(v100 + 32))(v4 + v37, v40, v101);
  v41 = *(*v4 + 128);
  LOBYTE(aBlock) = 0;
  v42 = v102;
  sub_217007DA4();
  v43 = *(v103 + 32);
  v44 = v104;
  v43(v4 + v41, v42, v104);
  *(v4 + *(*v4 + 136)) = 0;
  v45 = *(*v4 + 144);
  type metadata accessor for AutoUpdatingPageMapper();
  swift_allocObject();
  *(v4 + v45) = sub_216E593C8();
  v46 = *(*v4 + 184);
  LOBYTE(aBlock) = 1;
  sub_217007DA4();
  v43(v4 + v46, v42, v44);
  v47 = *(*v4 + 192);
  v48 = v105;
  swift_storeEnumTagMultiPayload();
  v49 = v106;
  sub_216DDA0A0(v48, v106);
  v50 = v108;
  sub_217007DA4();
  sub_216DDA050();
  v51 = *(v126 + 32);
  v126 += 32;
  v52 = v4 + v47;
  v53 = v50;
  v54 = v50;
  v55 = v109;
  v51(v52, v53, v109);
  v56 = *(*v4 + 200);
  swift_storeEnumTagMultiPayload();
  sub_216DDA0A0(v48, v49);
  sub_217007DA4();
  sub_216DDA050();
  v51(v4 + v56, v54, v55);
  v57 = *(*v4 + 208);
  v58 = sub_2170080D4();
  v59 = v110;
  __swift_storeEnumTagSinglePayload(v110, 1, 1, v58);
  sub_216DD9F00();
  v60 = v113;
  sub_217007DA4();
  sub_2166997CC(v59, &qword_27CAB9180, &qword_21701C770);
  (*(v114 + 32))(v4 + v57, v60, v115);
  v61 = *(*v4 + 216);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  __swift_storeEnumTagSinglePayload(v4 + v61, 1, 1, v62);
  *(v4 + *(*v4 + 240)) = 0;
  v63 = *(*v4 + 248);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  __swift_storeEnumTagSinglePayload(v4 + v63, 1, 1, v126);
  *(v4 + *(*v4 + 256)) = MEMORY[0x277D84F90];
  v64 = *(*v4 + 264);
  type metadata accessor for AsyncQueue(0);
  swift_allocObject();
  *(v4 + v64) = sub_216CA9FD4();
  *(v4 + *(*v4 + 272)) = 0;
  swift_weakInit();
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 304) + 8) = 0;
  swift_unknownObjectWeakInit();
  v65 = *(*v4 + 312);
  type metadata accessor for MusicPageMetricsProvider(0);
  v66 = swift_allocObject();
  v67 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  v68 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v66 + v67, 1, 1, v68);
  *(v4 + v65) = v66;
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 160)) = v123;
  *(v4 + *(*v4 + 224)) = v121;
  sub_216DD9F00();
  sub_21700DAB4();
  v69 = type metadata accessor for ObjectGraph(0);

  sub_21700E094();
  *(v4 + *(*v4 + 232)) = aBlock;
  sub_21700DDB4();

  v115 = v69;
  sub_21700E094();

  *(v4 + *(*v4 + 120)) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9878, &qword_2170603A0);
  swift_allocObject();

  *(v4 + *(*v4 + 168)) = sub_216CF2B6C(v70);
  type metadata accessor for SocialBadgingRequestCoordinator(0);

  sub_21700E094();

  *(v4 + *(*v4 + 176)) = aBlock;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9880, &qword_2170603A8);
  v71 = MEMORY[0x277D21A98];
  sub_2166D9530(&qword_280E2A340, &qword_27CAC9880, &qword_2170603A8, MEMORY[0x277D21A98]);

  sub_21700D1D4();
  v72 = v116;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v117 + 8))(v72, v118);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9888, &qword_2170603B0);
  sub_2166D9530(&qword_280E2A320, &qword_27CAC9888, &qword_2170603B0, v71);
  sub_21700D1D4();
  v73 = v119;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v120 + 8))(v73, v124);
  type metadata accessor for AppLifeCycleObserver();
  sub_21700E094();
  v74 = v125;
  v120 = aBlock;
  sub_2166B5494(v4, &unk_282936DD0, &unk_282936DF8, sub_216DD976C, sub_2168E4C64, v75, v76, v77, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
  __swift_storeEnumTagSinglePayload(v74, 0, 1, v126);
  swift_beginAccess();
  sub_216DD9404();
  swift_endAccess();
  v78 = sub_216D55EEC();
  v79 = sub_2166BF3C8(v78);
  v80 = 0;
  v81 = *(*v4 + 256);
  v125 = (v78 & 0xFFFFFFFFFFFFFF8);
  v126 = v78 & 0xC000000000000001;
  v124 = v129;
  while (1)
  {
    if (v79 == v80)
    {

      sub_2166997CC(v122, &qword_27CAC9698, &qword_217060060);
      return;
    }

    if (v126)
    {
      v82 = MEMORY[0x21CEA0220](v80, v78);
    }

    else
    {
      if (v80 >= *(v125 + 2))
      {
        goto LABEL_16;
      }

      v82 = *(v78 + 8 * v80 + 32);
    }

    if (__OFADD__(v80, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v84 = *(Strong + 16);
      swift_unknownObjectRelease();
      v85 = [objc_opt_self() defaultCenter];
      v86 = swift_allocObject();
      swift_weakInit();
      v87 = swift_allocObject();
      *(v87 + 16) = v86;
      *(v87 + 24) = v82;
      v129[2] = sub_216DD9694;
      v129[3] = v87;
      aBlock = MEMORY[0x277D85DD0];
      v128 = 1107296256;
      v129[0] = sub_216D5D040;
      v129[1] = &block_descriptor_1181;
      v88 = _Block_copy(&aBlock);
      v89 = v84;

      v90 = [v85 addObserverForName:v89 object:0 queue:0 usingBlock:v88];
      _Block_release(v88);

      v91 = swift_beginAccess();
      MEMORY[0x21CE9F610](v91);
      if (*((*(v4 + v81) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v81) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      swift_endAccess();
    }

    else
    {
    }

    ++v80;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_216D5C838(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_17_2(a2 + 16, v6);
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = OUTLINED_FUNCTION_41_2();
    a3(v5);
  }

  return result;
}

uint64_t sub_216D5C8A0()
{
  OUTLINED_FUNCTION_1112();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_143();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_17_2(v3 + 16, v13);
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = v1;

  sub_21677BBA0();
}

uint64_t sub_216D5C9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_216D5C9D4, 0, 0);
}

uint64_t sub_216D5C9D4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  OUTLINED_FUNCTION_962(Strong);

  sub_21700EA34();
  *(v0 + 72) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v2 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_216D5CA68()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_1196();
  OUTLINED_FUNCTION_459();
  sub_216A41228();
  if (v0)
  {
  }

  else
  {
    swift_weakDestroy();
    OUTLINED_FUNCTION_3();

    v1();
  }
}

uint64_t sub_216D5CB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_216D5CB24, 0, 0);
}

uint64_t sub_216D5CB24()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  OUTLINED_FUNCTION_962(Strong);

  sub_21700EA34();
  *(v0 + 72) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v2 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_216D5CBB8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_1196();
  OUTLINED_FUNCTION_459();
  sub_216A414F0();
  if (v0)
  {
  }

  else
  {
    swift_weakDestroy();
    OUTLINED_FUNCTION_3();

    v1();
  }
}

uint64_t sub_216D5CC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_216D5CC74, 0, 0);
}

uint64_t sub_216D5CC74()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  OUTLINED_FUNCTION_962(Strong);

  sub_21700EA34();
  *(v0 + 72) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v2 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_216D5CD08()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_1196();
  OUTLINED_FUNCTION_459();
  sub_216A417B8();
  if (v0)
  {
  }

  else
  {
    swift_weakDestroy();
    OUTLINED_FUNCTION_3();

    v1();
  }
}

uint64_t sub_216D5CDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_216D5CDC4, 0, 0);
}

uint64_t sub_216D5CDC4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  OUTLINED_FUNCTION_962(Strong);

  sub_21700EA34();
  *(v0 + 72) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v2 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_216D5CE58()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_1196();
  OUTLINED_FUNCTION_459();
  sub_216A41A80();
  if (v0)
  {
  }

  else
  {
    swift_weakDestroy();
    OUTLINED_FUNCTION_3();

    v1();
  }
}

uint64_t sub_216D5CEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_216D5CF14, 0, 0);
}

uint64_t sub_216D5CF14()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  OUTLINED_FUNCTION_962(Strong);

  sub_21700EA34();
  *(v0 + 72) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v2 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_216D5CFA8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_1196();
  OUTLINED_FUNCTION_459();
  sub_216A41E18();
  if (v0)
  {
  }

  else
  {
    swift_weakDestroy();
    OUTLINED_FUNCTION_3();

    v1();
  }
}

uint64_t sub_216D5D040(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  sub_217005974();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = *(v2 + 32);
  sub_217005934();

  v7(v6);

  v8 = OUTLINED_FUNCTION_45_0();
  return v9(v8);
}

uint64_t sub_216D5D118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D28, &qword_217057640);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for Page(0);
  sub_2166DC484(&qword_280E2C548, type metadata accessor for Page, &unk_217040788);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_216DD9F00();

  sub_217007DF4();
  return sub_2166997CC(a1, &qword_27CAC6D28, &qword_217057640);
}

uint64_t sub_216D5D268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91F0, &qword_21701C7E0);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for JSReplayPage(0);
  sub_2166DC484(&qword_27CAB91F8, type metadata accessor for JSReplayPage, &unk_217014450);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_216DD9F00();

  sub_217007DF4();
  return sub_2166997CC(a1, &qword_27CAB91F0, &qword_21701C7E0);
}

uint64_t sub_216D5D3B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE088, &qword_21702DA60);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for ReplayModel(0);
  sub_2166DC484(&qword_27CAB6FA0, type metadata accessor for ReplayModel, &unk_217015560);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_216DD9F00();

  sub_217007DF4();
  return sub_2166997CC(a1, &qword_27CABE088, &qword_21702DA60);
}

uint64_t sub_216D5D508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EF8, &qword_21705F360);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for JSSearchPage(0);
  sub_2166DC484(&qword_280E44AC8, type metadata accessor for JSSearchPage, &unk_2170428C0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_216DD9F00();

  sub_217007DF4();
  return sub_2166997CC(a1, &qword_27CAC8EF8, &qword_21705F360);
}

uint64_t sub_216D5D658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D60, &unk_217060140);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for JSSearchResultsPage(0);
  sub_2166DC484(&qword_280E3DCA0, type metadata accessor for JSSearchResultsPage, &unk_21706CAE4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_216DD9F00();

  sub_217007DF4();
  return sub_2166997CC(a1, &qword_27CAC7D60, &unk_217060140);
}

uint64_t sub_216D5D7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_733();
  v8(0);
  OUTLINED_FUNCTION_1043();
  v9 = OUTLINED_FUNCTION_45_0();
  sub_2166DC484(v9, v10, a7);
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_42();
  return sub_217007DF4();
}

void sub_216D5D864()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_110();
  sub_21700D574();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_39_3();
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_26_21();
  sub_21700CEA4();
  sub_21700D0D4();
  v3 = OUTLINED_FUNCTION_116();
  v4(v3);
  v5 = sub_21700DDB4();
  OUTLINED_FUNCTION_91_1(v5);
  OUTLINED_FUNCTION_39_3();
  sub_21700DDA4();
  OUTLINED_FUNCTION_65_2();
}

void sub_216D5D970(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  sub_216DD8F88();
  swift_endAccess();
  *(v1 + *(*v1 + 240)) = 1;
  v6 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_216DD9F00();
  sub_21700EA34();

  v7 = sub_21700EA24();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v2;
  v10 = v12;
  *(v8 + 40) = *&v11[8];
  *(v8 + 56) = v10;
  *(v8 + 72) = v13;
  sub_21677E250(0, 0, v5, &unk_21705EBF0, v8);
}

void sub_216D5DB18(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  sub_216DD8F88();
  swift_endAccess();
  *(v1 + *(*v1 + 240)) = 1;
  v6 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_216DD9F00();
  sub_21700EA34();

  v7 = sub_21700EA24();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v2;
  v10 = v12;
  *(v8 + 40) = *&v11[8];
  *(v8 + 56) = v10;
  *(v8 + 72) = v13;
  sub_21677E700();
}

void sub_216D5DCC0(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  sub_216DD8F88();
  swift_endAccess();
  *(v1 + *(*v1 + 240)) = 1;
  v6 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_216DD9F00();
  sub_21700EA34();

  v7 = sub_21700EA24();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v2;
  v10 = v12;
  *(v8 + 40) = *&v11[8];
  *(v8 + 56) = v10;
  *(v8 + 72) = v13;
  sub_21677E938();
}

void sub_216D5DE68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_23_5();
  sub_216DD8F88();
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  *(v0 + *(v3 + 240)) = 1;
  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_23_5();
  sub_216DD9F00();
  sub_21700EA34();
  OUTLINED_FUNCTION_47();

  sub_21700EA24();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_944(v8, MEMORY[0x277D85700]);
  OUTLINED_FUNCTION_9_46();
  sub_21677EDC8();
}

void sub_216D5DFC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_23_5();
  sub_216DD8F88();
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  *(v0 + *(v3 + 240)) = 1;
  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_23_5();
  sub_216DD9F00();
  sub_21700EA34();
  OUTLINED_FUNCTION_47();

  sub_21700EA24();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_944(v8, MEMORY[0x277D85700]);
  OUTLINED_FUNCTION_9_46();
  sub_21677EE0C();
}

uint64_t sub_216D5E118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_21700EA34();
  v5[10] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_216D5E1B4, v7, v6);
}

uint64_t sub_216D5E1B4()
{
  OUTLINED_FUNCTION_31();
  sub_216DD9F00();
  OUTLINED_FUNCTION_8_97();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_148_2(v0);
  OUTLINED_FUNCTION_230_1(&dword_21705EBF8);

  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_296(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_745(v2);
  OUTLINED_FUNCTION_308();

  return v4();
}

uint64_t sub_216D5E294()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[15] = v0;

  if (v0)
  {
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_216DDA404;
  }

  else
  {

    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_216DDA42C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D5E398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_21700EA34();
  v5[10] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_216D5E434, v7, v6);
}

uint64_t sub_216D5E434()
{
  OUTLINED_FUNCTION_31();
  sub_216DD9F00();
  OUTLINED_FUNCTION_8_97();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_148_2(v0);
  OUTLINED_FUNCTION_230_1(&dword_21705FD38);

  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_296(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_745(v2);
  OUTLINED_FUNCTION_308();

  return v4();
}

uint64_t sub_216D5E514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_21700EA34();
  v5[10] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_216D5E5B0, v7, v6);
}

uint64_t sub_216D5E5B0()
{
  OUTLINED_FUNCTION_31();
  sub_216DD9F00();
  OUTLINED_FUNCTION_8_97();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_148_2(v0);
  OUTLINED_FUNCTION_230_1(&dword_21705F848);

  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_296(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_745(v2);
  OUTLINED_FUNCTION_308();

  return v4();
}

uint64_t sub_216D5E690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_21700EA34();
  v5[10] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_216D5E72C, v7, v6);
}

uint64_t sub_216D5E72C()
{
  OUTLINED_FUNCTION_31();
  sub_216DD9F00();
  OUTLINED_FUNCTION_8_97();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_148_2(v0);
  OUTLINED_FUNCTION_230_1(&dword_21705F2A0);

  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_296(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_745(v2);
  OUTLINED_FUNCTION_308();

  return v4();
}

uint64_t sub_216D5E80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_21700EA34();
  v5[10] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_216D5E8A8, v7, v6);
}

uint64_t sub_216D5E8A8()
{
  OUTLINED_FUNCTION_31();
  sub_216DD9F00();
  OUTLINED_FUNCTION_8_97();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_148_2(v0);
  OUTLINED_FUNCTION_230_1(&dword_217060078);

  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_296(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_745(v2);
  OUTLINED_FUNCTION_308();

  return v4();
}

uint64_t sub_216D5E988()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[15] = v0;

  if (v0)
  {
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_216D5EA8C;
  }

  else
  {

    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_216A9B29C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D5EA8C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D5EAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216DDA0A0(a1, v9);
  v10 = *(a3 + *(*a3 + 168));
  v11 = sub_216D55EEC();
  sub_216DD9F00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AD8, &qword_21705EC28);
  swift_allocObject();
  v12 = sub_216DB0C14(v9, v10, v11, a2, v15);

  return v12;
}

uint64_t sub_216D5EC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for JSReplayPage(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216DDA0A0(a1, v9);
  v10 = *(a3 + *(*a3 + 168));
  v11 = sub_216D55EEC();
  sub_216DD9F00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94B0, &qword_21705FD68);
  swift_allocObject();
  v12 = sub_216DB0C14(v9, v10, v11, a2, v15);

  return v12;
}

uint64_t sub_216D5EDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ReplayModel(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216DDA0A0(a1, v9);
  v10 = *(a3 + *(*a3 + 168));
  v11 = sub_216D55EEC();
  sub_216DD9F00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91E8, &qword_21705F878);
  swift_allocObject();
  v12 = sub_216DB0C14(v9, v10, v11, a2, v15);

  return v12;
}

uint64_t sub_216D5EF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for JSSearchPage(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216DDA0A0(a1, v9);
  v10 = *(a3 + *(*a3 + 168));
  v11 = sub_216D55EEC();
  sub_216DD9F00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EC0, &unk_21705F2F0);
  swift_allocObject();
  v12 = sub_216DB0C14(v9, v10, v11, a2, v15);

  return v12;
}

uint64_t sub_216D5F074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for JSSearchResultsPage(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216DDA0A0(a1, v9);
  v10 = *(a3 + *(*a3 + 168));
  v11 = sub_216D55EEC();
  sub_216DD9F00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B8, &qword_2170600C8);
  swift_allocObject();
  v12 = sub_216DB0C14(v9, v10, v11, a2, v15);

  return v12;
}

uint64_t sub_216D5F1D4(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D5F274, v6, v5);
}

uint64_t sub_216D5F274()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    OUTLINED_FUNCTION_742();
    sub_216D64C50();
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_622(v2);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v3);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v5;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_216D5F390()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {

    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_216DDA410;
  }

  else
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_216DDA390;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D5F494(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AB0, &qword_21705EAE8) - 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 + 64);
  *(v4 + 48) = swift_task_alloc();
  sub_21700EA34();
  *(v4 + 56) = sub_21700EA24();
  v7 = sub_21700E9B4();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x2822009F8](sub_216D5F5A0, v7, v6);
}

uint64_t sub_216D5F5A0()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_986();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_985();
    sub_216D63A60(v2, v3);
  }

  OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_188_1();
  sub_216DD9F00();
  OUTLINED_FUNCTION_711();
  v4 = OUTLINED_FUNCTION_1193();
  OUTLINED_FUNCTION_416(v4);

  OUTLINED_FUNCTION_1055();
  sub_216D07D80();
  OUTLINED_FUNCTION_785(v5);

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_979(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F6D0;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D5F6D0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_216DDA278;
  }

  else
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_216DDA394;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D5F7D4(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D5F874, v6, v5);
}

uint64_t sub_216D5F874()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D64618(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D5F980(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D5FA20, v6, v5);
}

uint64_t sub_216D5FA20()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    OUTLINED_FUNCTION_742();
    sub_216D64C50();
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_622(v2);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v3);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v5;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_216D5FB3C(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D5FBDC, v6, v5);
}

uint64_t sub_216D5FBDC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    OUTLINED_FUNCTION_742();
    sub_216D670E8();
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_622(v2);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v3);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v5;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_216D5FCF8(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9480, &qword_21705FCE0) - 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 + 64);
  *(v4 + 48) = swift_task_alloc();
  sub_21700EA34();
  *(v4 + 56) = sub_21700EA24();
  v7 = sub_21700E9B4();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x2822009F8](sub_216D5FE04, v7, v6);
}

uint64_t sub_216D5FE04()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_986();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_985();
    sub_216D65730(v2, v3);
  }

  OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_188_1();
  sub_216DD9F00();
  OUTLINED_FUNCTION_711();
  v4 = OUTLINED_FUNCTION_1193();
  OUTLINED_FUNCTION_416(v4);

  OUTLINED_FUNCTION_1055();
  sub_216D07D80();
  OUTLINED_FUNCTION_785(v5);

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_979(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F6D0;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D5FF34(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D5FFD4, v6, v5);
}

uint64_t sub_216D5FFD4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D66478(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D600E0(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D60180, v6, v5);
}

uint64_t sub_216D60180()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    OUTLINED_FUNCTION_742();
    sub_216D670E8();
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_622(v2);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v3);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v5;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_216D6029C(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(type metadata accessor for ReplaceReplayYearUpdate(0) - 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 + 64);
  *(v4 + 48) = swift_task_alloc();
  sub_21700EA34();
  *(v4 + 56) = sub_21700EA24();
  v7 = sub_21700E9B4();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x2822009F8](sub_216D6039C, v7, v6);
}

uint64_t sub_216D6039C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_986();
  if (v1)
  {
    OUTLINED_FUNCTION_985();
    sub_216D6D980();
  }

  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_0_5();
  sub_216DDA0A0(v5, v2);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  sub_216DDA0F4(v2, v7 + v6);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_785(v8);

  v9 = swift_task_alloc();
  OUTLINED_FUNCTION_979(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v3 = v10;
  v3[1] = sub_216D5F6D0;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x282200430](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_216D60548(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91D0, &qword_21705F7F0) - 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 + 64);
  *(v4 + 48) = swift_task_alloc();
  sub_21700EA34();
  *(v4 + 56) = sub_21700EA24();
  v7 = sub_21700E9B4();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x2822009F8](sub_216D60654, v7, v6);
}

uint64_t sub_216D60654()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_986();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_985();
    sub_216D67BB4(v2, v3);
  }

  OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_188_1();
  sub_216DD9F00();
  OUTLINED_FUNCTION_711();
  v4 = OUTLINED_FUNCTION_1193();
  OUTLINED_FUNCTION_416(v4);

  OUTLINED_FUNCTION_1055();
  sub_216D07D80();
  OUTLINED_FUNCTION_785(v5);

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_979(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F6D0;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D60784(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D60824, v6, v5);
}

uint64_t sub_216D60824()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D688D4(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D60930(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D609D0, v6, v5);
}

uint64_t sub_216D609D0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D69C18(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D60ADC(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EC8, &qword_21705F310) - 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 + 64);
  *(v4 + 48) = swift_task_alloc();
  sub_21700EA34();
  *(v4 + 56) = sub_21700EA24();
  v7 = sub_21700E9B4();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x2822009F8](sub_216D60BE8, v7, v6);
}

uint64_t sub_216D60BE8()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_986();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_985();
    sub_216D6951C(v2, v3);
  }

  OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_188_1();
  sub_216DD9F00();
  OUTLINED_FUNCTION_711();
  v4 = OUTLINED_FUNCTION_1193();
  OUTLINED_FUNCTION_416(v4);

  OUTLINED_FUNCTION_1055();
  sub_216D07D80();
  OUTLINED_FUNCTION_785(v5);

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_979(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F6D0;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D60D18(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D60DB8, v6, v5);
}

uint64_t sub_216D60DB8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D6A860(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D60EC4(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D60F64, v6, v5);
}

uint64_t sub_216D60F64()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D6B4A8(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D61070(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D61110, v6, v5);
}

uint64_t sub_216D61110()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D6C0F0(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D6121C(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D612BC, v6, v5);
}

uint64_t sub_216D612BC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D6CD38(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D613C8(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(type metadata accessor for ReplaceReplayPageUpdate(0) - 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 + 64);
  *(v4 + 48) = swift_task_alloc();
  sub_21700EA34();
  *(v4 + 56) = sub_21700EA24();
  v7 = sub_21700E9B4();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x2822009F8](sub_216D614C8, v7, v6);
}

uint64_t sub_216D614C8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_986();
  if (v1)
  {
    OUTLINED_FUNCTION_985();
    sub_216D6D980();
  }

  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_0_5();
  sub_216DDA0A0(v5, v2);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  sub_216DDA0F4(v2, v7 + v6);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_785(v8);

  v9 = swift_task_alloc();
  OUTLINED_FUNCTION_979(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v3 = v10;
  v3[1] = sub_216D5F6D0;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x282200430](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_216D61674(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D61714, v6, v5);
}

uint64_t sub_216D61714()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D6EBF8(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D61820(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96C0, &qword_2170600E8) - 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 + 64);
  *(v4 + 48) = swift_task_alloc();
  sub_21700EA34();
  *(v4 + 56) = sub_21700EA24();
  v7 = sub_21700E9B4();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x2822009F8](sub_216D6192C, v7, v6);
}

uint64_t sub_216D6192C()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_986();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_985();
    sub_216D6E4FC(v2, v3);
  }

  OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_188_1();
  sub_216DD9F00();
  OUTLINED_FUNCTION_711();
  v4 = OUTLINED_FUNCTION_1193();
  OUTLINED_FUNCTION_416(v4);

  OUTLINED_FUNCTION_1055();
  sub_216D07D80();
  OUTLINED_FUNCTION_785(v5);

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_979(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D61A5C;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D61A5C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_216D61BCC;
  }

  else
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_216D61B60;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D61B60()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216D61BCC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D61C30(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D61CD0, v6, v5);
}

uint64_t sub_216D61CD0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D6F840(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D61DDC;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D61DDC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {

    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_216D61F44;
  }

  else
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_216D61EE0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D61EE0()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216D61F44()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D61FA0(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D62040, v6, v5);
}

uint64_t sub_216D62040()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D70488(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D6214C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_216DD9F00();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      sub_216DDA0A0(v4, a1);
      sub_2166997CC(v4, &qword_27CAC0678, &unk_217039100);
    }

    else
    {
      v10 = *(v7 + 2);
      *a1 = *v7;
      *(a1 + 16) = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30, &qword_2170576A0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30, &qword_2170576A0);
    swift_storeEnumTagMultiPayload();
    return sub_2166997CC(v7, &qword_27CAC0670, &qword_2170390F8);
  }
}

uint64_t sub_216D6234C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_216DD9F00();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      sub_216DDA0A0(v4, a1);
      sub_2166997CC(v4, &qword_27CAC0700, &qword_21705FC80);
    }

    else
    {
      v10 = *(v7 + 2);
      *a1 = *v7;
      *(a1 + 16) = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9200, &qword_21701C840);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9200, &qword_21701C840);
    swift_storeEnumTagMultiPayload();
    return sub_2166997CC(v7, &qword_27CAC06F8, &unk_2170394F0);
  }
}

uint64_t sub_216D6254C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_216DD9F00();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      sub_216DDA0A0(v4, a1);
      sub_2166997CC(v4, &qword_27CAC06B8, &qword_2170392D0);
    }

    else
    {
      v10 = *(v7 + 2);
      *a1 = *v7;
      *(a1 + 16) = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0, &qword_21702DAC0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0, &qword_21702DAC0);
    swift_storeEnumTagMultiPayload();
    return sub_2166997CC(v7, &qword_27CAC06B0, &qword_2170392C8);
  }
}

uint64_t sub_216D6274C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_216DD9F00();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      sub_216DDA0A0(v4, a1);
      sub_2166997CC(v4, &qword_27CAC0698, &qword_2170392A8);
    }

    else
    {
      v10 = *(v7 + 2);
      *a1 = *v7;
      *(a1 + 16) = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F00, &qword_21705F368);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F00, &qword_21705F368);
    swift_storeEnumTagMultiPayload();
    return sub_2166997CC(v7, &qword_27CAC06A0, &qword_2170392B0);
  }
}

uint64_t sub_216D6294C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710, &unk_217039510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_216DD9F00();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      sub_216DDA0A0(v4, a1);
      sub_2166997CC(v4, &qword_27CAC0710, &unk_217039510);
    }

    else
    {
      v10 = *(v7 + 2);
      *a1 = *v7;
      *(a1 + 16) = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0F8, qword_21702DC18);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0F8, qword_21702DC18);
    swift_storeEnumTagMultiPayload();
    return sub_2166997CC(v7, &qword_27CAC0718, &qword_2170600D0);
  }
}

uint64_t sub_216D62B4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D28, &qword_217057640);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AA0, &qword_21705EAC8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2166997CC(v5, &qword_27CAC8AA0, &qword_21705EAC8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30, &qword_2170576A0);
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
    return sub_216D5D118(v2);
  }

  else
  {
    sub_216DD9B04();
    sub_216D6214C(v2);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30, &qword_2170576A0);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v11);
    sub_216D5D118(v2);
    return sub_2166997CC(v8, &qword_27CAC0668, &qword_2170390F0);
  }
}

uint64_t sub_216D62D98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91F0, &qword_21701C7E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470, &qword_21705FCC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2166997CC(v5, &qword_27CAC9470, &qword_21705FCC0);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9200, &qword_21701C840);
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
    return sub_216D5D268(v2);
  }

  else
  {
    sub_216DD9B04();
    sub_216D6234C(v2);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9200, &qword_21701C840);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v11);
    sub_216D5D268(v2);
    return sub_2166997CC(v8, &qword_27CAC06F0, &qword_21705FC00);
  }
}

uint64_t sub_216D62FE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE088, &qword_21702DA60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2166997CC(v5, &qword_27CAC91C0, &qword_21705F7D0);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0, &qword_21702DAC0);
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
    return sub_216D5D3B8(v2);
  }

  else
  {
    sub_216DD9B04();
    sub_216D6254C(v2);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0, &qword_21702DAC0);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v11);
    sub_216D5D3B8(v2);
    return sub_2166997CC(v8, &qword_27CAC06A8, &qword_2170392C0);
  }
}

uint64_t sub_216D63230()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EF8, &qword_21705F360);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2166997CC(v5, &qword_27CAC8EB8, &unk_21705F2E0);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F00, &qword_21705F368);
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
    return sub_216D5D508(v2);
  }

  else
  {
    sub_216DD9B04();
    sub_216D6274C(v2);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F00, &qword_21705F368);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v11);
    sub_216D5D508(v2);
    return sub_2166997CC(v8, &qword_27CAC0690, &qword_2170392A0);
  }
}

uint64_t sub_216D6347C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D60, &unk_217060140);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2166997CC(v5, &qword_27CAC96B0, &qword_2170600B8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0F8, qword_21702DC18);
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
    return sub_216D5D658(v2);
  }

  else
  {
    sub_216DD9B04();
    sub_216D6294C(v2);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0F8, qword_21702DC18);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v11);
    sub_216D5D658(v2);
    return sub_2166997CC(v8, &qword_27CAC0708, &qword_2170600C0);
  }
}

uint64_t sub_216D636C8(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_377();
  swift_beginAccess();
  OUTLINED_FUNCTION_942();
  sub_216DD8F88();
  v6 = swift_endAccess();
  a4(v6);
  v7 = OUTLINED_FUNCTION_109();
  return sub_2166997CC(v7, v8, a3);
}

void sub_216D6374C()
{
  OUTLINED_FUNCTION_0_1();
  if (*(v0 + *(v1 + 272)) < 1)
  {
    sub_216D637FC();
  }

  else
  {
    sub_216D63788();
  }
}

uint64_t sub_216D63788()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 136);
  if (*(v0 + v2))
  {

    sub_217007D34();
  }

  *(v0 + v2) = 0;
}

void sub_216D637FC()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0, &qword_217023920);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_78_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0680, &qword_217039120);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_0_1();
  v6 = sub_216E591D4();
  OUTLINED_FUNCTION_658(v6);
  sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
  v22 = sub_21700EE84();
  sub_21700EE64();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_7_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_42();
  sub_2166D9530(v13, v14, v15, v16);
  sub_2166C0E74();
  OUTLINED_FUNCTION_1033();
  sub_217007E54();
  sub_2166997CC(v1, &qword_27CABE1F0, &qword_217023920);

  OUTLINED_FUNCTION_143();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_1048(v17);
  sub_2166D9530(&qword_280E48570, &qword_27CAC0680, &qword_217039120, MEMORY[0x277CBCD60]);
  v18 = sub_217007E84();

  v19 = OUTLINED_FUNCTION_97();
  v20(v19);
  OUTLINED_FUNCTION_0_5();
  *(v2 + *(v21 + 136)) = v18;

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216D63A60(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = a2;
  v52 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
  MEMORY[0x28223BE20](v4);
  v6 = &v45[-v5];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AB0, &qword_21705EAE8);
  MEMORY[0x28223BE20](v50);
  v47 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v49 = &v45[-v9];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AA0, &qword_21705EAC8);
  MEMORY[0x28223BE20](v48);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v45[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v45[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v45[-v19];
  swift_beginAccess();
  sub_216DD9F00();
  v51 = v20;
  sub_216DD9F00();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2166997CC(v17, &qword_27CAC0670, &qword_2170390F8);
LABEL_9:
    v23 = v11;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2166997CC(v17, &qword_27CAC0668, &qword_2170390F0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC8AA0, &qword_21705EAC8, sub_216D62B4C);
    goto LABEL_9;
  }

  sub_216DD9B04();
  v23 = v11;
  if ((v46 & 1) == 0)
  {
    sub_216DD9F00();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC8AA0, &qword_21705EAC8, sub_216D62B4C);
  }

  sub_2166997CC(v6, &qword_27CAC0678, &unk_217039100);
LABEL_10:
  v24 = v49;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v25 = sub_217007CA4();
  __swift_project_value_buffer(v25, qword_280E2C160);
  sub_216DD9F00();
  sub_216DD9F00();
  v26 = sub_217007C84();
  v27 = sub_21700EDA4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v28 = 136446466;
    sub_216DD9F00();
    v29 = sub_21700E5B4();
    v30 = v24;
    v31 = v29;
    v33 = v32;
    sub_2166997CC(v30, &qword_27CAC8AB0, &qword_21705EAE8);
    v34 = sub_2166A85FC(v31, v33, &v53);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    sub_216DD9F00();
    v35 = sub_21700E5B4();
    v37 = v36;
    sub_2166997CC(v23, &qword_27CAC8AA0, &qword_21705EAC8);
    v38 = sub_2166A85FC(v35, v37, &v53);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_216679000, v26, v27, "Update started: %{public}s from state: %{public}s", v28, 0x16u);
    v39 = v49;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v39, -1, -1);
    MEMORY[0x21CEA1440](v28, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC8AA0, &qword_21705EAC8);
    sub_2166997CC(v24, &qword_27CAC8AB0, &qword_21705EAE8);
  }

  sub_216DD4790();

  v41 = *(*v3 + 272);
  v42 = *(v3 + v41);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v41) = v44;
    sub_216D6374C();
    return sub_2166997CC(v51, &qword_27CAC8AA0, &qword_21705EAC8);
  }

  return result;
}

void sub_216D64170()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_909(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = OUTLINED_FUNCTION_114_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v68 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_783(v0 + *(v17 + 216));
  OUTLINED_FUNCTION_727();
  sub_216DD9F00();
  OUTLINED_FUNCTION_1017();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  OUTLINED_FUNCTION_15_6(v3);
  if (v19)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_668();
      sub_216DD9B04();
      if (v65)
      {
        v21 = &qword_27CAC0678;
        v22 = &unk_217039100;
        v23 = v4;
      }

      else
      {
        OUTLINED_FUNCTION_576();
        sub_216DD9F00();
        OUTLINED_FUNCTION_303();
        __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
        OUTLINED_FUNCTION_194();
        swift_storeEnumTagMultiPayload();
        v39 = OUTLINED_FUNCTION_3_45();
        __swift_storeEnumTagSinglePayload(v39, v40, v41, v18);
        OUTLINED_FUNCTION_60_13();
        v42 = OUTLINED_FUNCTION_907();
        sub_216D636C8(v42, v43, v44, v45);
        OUTLINED_FUNCTION_31_9();
      }

      goto LABEL_10;
    }

    sub_2166997CC(v3, &qword_27CAC0668, &qword_2170390F0);
LABEL_8:
    OUTLINED_FUNCTION_412();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    OUTLINED_FUNCTION_194();
    swift_storeEnumTagMultiPayload();
    v28 = OUTLINED_FUNCTION_3_45();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v18);
    OUTLINED_FUNCTION_60_13();
    v31 = OUTLINED_FUNCTION_907();
    sub_216D636C8(v31, v32, v33, v34);
    goto LABEL_11;
  }

  v21 = &qword_27CAC0670;
  v22 = &qword_2170390F8;
  v23 = v3;
LABEL_10:
  sub_2166997CC(v23, v21, v22);
LABEL_11:
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118(&qword_280E2C158);
  }

  v46 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v46, qword_280E2C160);
  sub_216DD9F00();

  v47 = sub_217007C84();
  v48 = sub_21700EDA4();

  if (os_log_type_enabled(v47, v48))
  {
    OUTLINED_FUNCTION_544();
    v49 = swift_slowAlloc();
    OUTLINED_FUNCTION_556();
    v69 = swift_slowAlloc();
    *v49 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
    v50 = sub_21700E5B4();
    sub_2166A85FC(v50, v51, &v69);
    OUTLINED_FUNCTION_1233();

    OUTLINED_FUNCTION_905();
    OUTLINED_FUNCTION_69();
    sub_216DD9F00();
    sub_21700E5B4();
    v1 = v2;
    OUTLINED_FUNCTION_663();
    sub_2166997CC(v52, v53, v54);
    OUTLINED_FUNCTION_1166();
    OUTLINED_FUNCTION_1010();
    *(v49 + 14) = &qword_27CAC8AA0;
    OUTLINED_FUNCTION_896();
    _os_log_impl(v55, v56, v57, v58, v59, 0x16u);
    OUTLINED_FUNCTION_1008();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440](v60);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440](v61);
  }

  else
  {

    sub_2166997CC(v68, &qword_27CAC8AA0, &qword_21705EAC8);
  }

  OUTLINED_FUNCTION_488();
  sub_216DD4790();

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1245();
  if (v64)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v62) = v63;
    OUTLINED_FUNCTION_159_1();
    sub_2166997CC(v1, &qword_27CAC8AA0, &qword_21705EAC8);
    OUTLINED_FUNCTION_26();
  }
}

uint64_t sub_216D64618(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v41) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AA0, &qword_21705EAC8);
  MEMORY[0x28223BE20](v42);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v41)
      {
        v20 = &qword_27CAC0678;
        v21 = &unk_217039100;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC8AA0, &qword_21705EAC8, sub_216D62B4C);
        v22 = v7;
        v20 = &qword_27CAC0678;
        v21 = &unk_217039100;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0668, &qword_2170390F0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC8AA0, &qword_21705EAC8, sub_216D62B4C);
    goto LABEL_11;
  }

  v20 = &qword_27CAC0670;
  v21 = &qword_2170390F8;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v43;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = a1;
    v45 = v41;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AD8, &qword_21705EC28);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v45);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC8AA0, &qword_21705EAC8);
    v34 = sub_2166A85FC(v31, v33, &v45);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v41;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC8AA0, &qword_21705EAC8);
  }

  sub_216DD4790();

  v37 = *(*v3 + 272);
  v38 = *(v3 + v37);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v37) = v40;
    sub_216D6374C();
    return sub_2166997CC(v17, &qword_27CAC8AA0, &qword_21705EAC8);
  }

  return result;
}

void sub_216D64C50()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_909(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = OUTLINED_FUNCTION_114_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v68 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_783(v0 + *(v17 + 216));
  OUTLINED_FUNCTION_727();
  sub_216DD9F00();
  OUTLINED_FUNCTION_1017();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  OUTLINED_FUNCTION_15_6(v3);
  if (v19)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_668();
      sub_216DD9B04();
      if (v65)
      {
        v21 = &qword_27CAC0678;
        v22 = &unk_217039100;
        v23 = v4;
      }

      else
      {
        OUTLINED_FUNCTION_576();
        sub_216DD9F00();
        OUTLINED_FUNCTION_303();
        __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
        OUTLINED_FUNCTION_194();
        swift_storeEnumTagMultiPayload();
        v39 = OUTLINED_FUNCTION_3_45();
        __swift_storeEnumTagSinglePayload(v39, v40, v41, v18);
        OUTLINED_FUNCTION_60_13();
        v42 = OUTLINED_FUNCTION_907();
        sub_216D636C8(v42, v43, v44, v45);
        OUTLINED_FUNCTION_31_9();
      }

      goto LABEL_10;
    }

    sub_2166997CC(v3, &qword_27CAC0668, &qword_2170390F0);
LABEL_8:
    OUTLINED_FUNCTION_412();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    OUTLINED_FUNCTION_194();
    swift_storeEnumTagMultiPayload();
    v28 = OUTLINED_FUNCTION_3_45();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v18);
    OUTLINED_FUNCTION_60_13();
    v31 = OUTLINED_FUNCTION_907();
    sub_216D636C8(v31, v32, v33, v34);
    goto LABEL_11;
  }

  v21 = &qword_27CAC0670;
  v22 = &qword_2170390F8;
  v23 = v3;
LABEL_10:
  sub_2166997CC(v23, v21, v22);
LABEL_11:
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118(&qword_280E2C158);
  }

  v46 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v46, qword_280E2C160);
  sub_216DD9F00();

  v47 = sub_217007C84();
  v48 = sub_21700EDA4();

  if (os_log_type_enabled(v47, v48))
  {
    OUTLINED_FUNCTION_544();
    v49 = swift_slowAlloc();
    OUTLINED_FUNCTION_556();
    v69 = swift_slowAlloc();
    *v49 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
    v50 = sub_21700E5B4();
    sub_2166A85FC(v50, v51, &v69);
    OUTLINED_FUNCTION_1233();

    OUTLINED_FUNCTION_905();
    OUTLINED_FUNCTION_69();
    sub_216DD9F00();
    sub_21700E5B4();
    v1 = v2;
    OUTLINED_FUNCTION_663();
    sub_2166997CC(v52, v53, v54);
    OUTLINED_FUNCTION_1166();
    OUTLINED_FUNCTION_1010();
    *(v49 + 14) = &qword_27CAC8AA0;
    OUTLINED_FUNCTION_896();
    _os_log_impl(v55, v56, v57, v58, v59, 0x16u);
    OUTLINED_FUNCTION_1008();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440](v60);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440](v61);
  }

  else
  {

    sub_2166997CC(v68, &qword_27CAC8AA0, &qword_21705EAC8);
  }

  OUTLINED_FUNCTION_488();
  sub_216DD4790();

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1245();
  if (v64)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v62) = v63;
    OUTLINED_FUNCTION_159_1();
    sub_2166997CC(v1, &qword_27CAC8AA0, &qword_21705EAC8);
    OUTLINED_FUNCTION_26();
  }
}

uint64_t sub_216D650F8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v41) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470, &qword_21705FCC0);
  MEMORY[0x28223BE20](v42);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v41)
      {
        v20 = &qword_27CAC0700;
        v21 = &qword_21705FC80;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);
        v22 = v7;
        v20 = &qword_27CAC0700;
        v21 = &qword_21705FC80;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06F0, &qword_21705FC00);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06F8;
  v21 = &unk_2170394F0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v43;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = a1;
    v45 = v41;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9468, &qword_21705FC98);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v45);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC9470, &qword_21705FCC0);
    v34 = sub_2166A85FC(v31, v33, &v45);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v41;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC9470, &qword_21705FCC0);
  }

  sub_216DD4790();

  v37 = *(*v3 + 272);
  v38 = *(v3 + v37);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v37) = v40;
    sub_216D6374C();
    return sub_2166997CC(v17, &qword_27CAC9470, &qword_21705FCC0);
  }

  return result;
}

uint64_t sub_216D65730(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = a2;
  v52 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
  MEMORY[0x28223BE20](v4);
  v6 = &v45[-v5];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9480, &qword_21705FCE0);
  MEMORY[0x28223BE20](v50);
  v47 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v49 = &v45[-v9];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470, &qword_21705FCC0);
  MEMORY[0x28223BE20](v48);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v45[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v45[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v45[-v19];
  swift_beginAccess();
  sub_216DD9F00();
  v51 = v20;
  sub_216DD9F00();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2166997CC(v17, &qword_27CAC06F8, &unk_2170394F0);
LABEL_9:
    v23 = v11;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2166997CC(v17, &qword_27CAC06F0, &qword_21705FC00);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);
    goto LABEL_9;
  }

  sub_216DD9B04();
  v23 = v11;
  if ((v46 & 1) == 0)
  {
    sub_216DD9F00();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);
  }

  sub_2166997CC(v6, &qword_27CAC0700, &qword_21705FC80);
LABEL_10:
  v24 = v49;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v25 = sub_217007CA4();
  __swift_project_value_buffer(v25, qword_280E2C160);
  sub_216DD9F00();
  sub_216DD9F00();
  v26 = sub_217007C84();
  v27 = sub_21700EDA4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v28 = 136446466;
    sub_216DD9F00();
    v29 = sub_21700E5B4();
    v30 = v24;
    v31 = v29;
    v33 = v32;
    sub_2166997CC(v30, &qword_27CAC9480, &qword_21705FCE0);
    v34 = sub_2166A85FC(v31, v33, &v53);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    sub_216DD9F00();
    v35 = sub_21700E5B4();
    v37 = v36;
    sub_2166997CC(v23, &qword_27CAC9470, &qword_21705FCC0);
    v38 = sub_2166A85FC(v35, v37, &v53);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_216679000, v26, v27, "Update started: %{public}s from state: %{public}s", v28, 0x16u);
    v39 = v49;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v39, -1, -1);
    MEMORY[0x21CEA1440](v28, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC9470, &qword_21705FCC0);
    sub_2166997CC(v24, &qword_27CAC9480, &qword_21705FCE0);
  }

  sub_216DD4790();

  v41 = *(*v3 + 272);
  v42 = *(v3 + v41);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v41) = v44;
    sub_216D6374C();
    return sub_2166997CC(v51, &qword_27CAC9470, &qword_21705FCC0);
  }

  return result;
}

uint64_t sub_216D65E40(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v41) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470, &qword_21705FCC0);
  MEMORY[0x28223BE20](v42);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v41)
      {
        v20 = &qword_27CAC0700;
        v21 = &qword_21705FC80;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);
        v22 = v7;
        v20 = &qword_27CAC0700;
        v21 = &qword_21705FC80;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06F0, &qword_21705FC00);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06F8;
  v21 = &unk_2170394F0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v43;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = a1;
    v45 = v41;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94A8, &qword_21705FD40);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v45);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC9470, &qword_21705FCC0);
    v34 = sub_2166A85FC(v31, v33, &v45);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v41;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC9470, &qword_21705FCC0);
  }

  sub_216DD4790();

  v37 = *(*v3 + 272);
  v38 = *(v3 + v37);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v37) = v40;
    sub_216D6374C();
    return sub_2166997CC(v17, &qword_27CAC9470, &qword_21705FCC0);
  }

  return result;
}

uint64_t sub_216D66478(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v41) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470, &qword_21705FCC0);
  MEMORY[0x28223BE20](v42);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v41)
      {
        v20 = &qword_27CAC0700;
        v21 = &qword_21705FC80;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);
        v22 = v7;
        v20 = &qword_27CAC0700;
        v21 = &qword_21705FC80;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06F0, &qword_21705FC00);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06F8;
  v21 = &unk_2170394F0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v43;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = a1;
    v45 = v41;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94B0, &qword_21705FD68);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v45);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC9470, &qword_21705FCC0);
    v34 = sub_2166A85FC(v31, v33, &v45);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v41;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC9470, &qword_21705FCC0);
  }

  sub_216DD4790();

  v37 = *(*v3 + 272);
  v38 = *(v3 + v37);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v37) = v40;
    sub_216D6374C();
    return sub_2166997CC(v17, &qword_27CAC9470, &qword_21705FCC0);
  }

  return result;
}

uint64_t sub_216D66AB0(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v41) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470, &qword_21705FCC0);
  MEMORY[0x28223BE20](v42);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v41)
      {
        v20 = &qword_27CAC0700;
        v21 = &qword_21705FC80;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);
        v22 = v7;
        v20 = &qword_27CAC0700;
        v21 = &qword_21705FC80;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06F0, &qword_21705FC00);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06F8;
  v21 = &unk_2170394F0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v43;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = a1;
    v45 = v41;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9648, &qword_21705FFC0);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v45);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC9470, &qword_21705FCC0);
    v34 = sub_2166A85FC(v31, v33, &v45);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v41;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC9470, &qword_21705FCC0);
  }

  sub_216DD4790();

  v37 = *(*v3 + 272);
  v38 = *(v3 + v37);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v37) = v40;
    sub_216D6374C();
    return sub_2166997CC(v17, &qword_27CAC9470, &qword_21705FCC0);
  }

  return result;
}

void sub_216D670E8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_909(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = OUTLINED_FUNCTION_114_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v68 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_783(v0 + *(v17 + 216));
  OUTLINED_FUNCTION_727();
  sub_216DD9F00();
  OUTLINED_FUNCTION_1017();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  OUTLINED_FUNCTION_15_6(v3);
  if (v19)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_668();
      sub_216DD9B04();
      if (v65)
      {
        v21 = &qword_27CAC0700;
        v22 = &qword_21705FC80;
        v23 = v4;
      }

      else
      {
        OUTLINED_FUNCTION_576();
        sub_216DD9F00();
        OUTLINED_FUNCTION_303();
        __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
        OUTLINED_FUNCTION_194();
        swift_storeEnumTagMultiPayload();
        v39 = OUTLINED_FUNCTION_3_45();
        __swift_storeEnumTagSinglePayload(v39, v40, v41, v18);
        OUTLINED_FUNCTION_179_0();
        v42 = OUTLINED_FUNCTION_907();
        sub_216D636C8(v42, v43, v44, v45);
        OUTLINED_FUNCTION_31_9();
      }

      goto LABEL_10;
    }

    sub_2166997CC(v3, &qword_27CAC06F0, &qword_21705FC00);
LABEL_8:
    OUTLINED_FUNCTION_412();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    OUTLINED_FUNCTION_194();
    swift_storeEnumTagMultiPayload();
    v28 = OUTLINED_FUNCTION_3_45();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v18);
    OUTLINED_FUNCTION_179_0();
    v31 = OUTLINED_FUNCTION_907();
    sub_216D636C8(v31, v32, v33, v34);
    goto LABEL_11;
  }

  v21 = &qword_27CAC06F8;
  v22 = &unk_2170394F0;
  v23 = v3;
LABEL_10:
  sub_2166997CC(v23, v21, v22);
LABEL_11:
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118(&qword_280E2C158);
  }

  v46 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v46, qword_280E2C160);
  sub_216DD9F00();

  v47 = sub_217007C84();
  v48 = sub_21700EDA4();

  if (os_log_type_enabled(v47, v48))
  {
    OUTLINED_FUNCTION_544();
    v49 = swift_slowAlloc();
    OUTLINED_FUNCTION_556();
    v69 = swift_slowAlloc();
    *v49 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
    v50 = sub_21700E5B4();
    sub_2166A85FC(v50, v51, &v69);
    OUTLINED_FUNCTION_1233();

    OUTLINED_FUNCTION_905();
    OUTLINED_FUNCTION_69();
    sub_216DD9F00();
    sub_21700E5B4();
    v1 = v2;
    OUTLINED_FUNCTION_663();
    sub_2166997CC(v52, v53, v54);
    OUTLINED_FUNCTION_1166();
    OUTLINED_FUNCTION_1010();
    *(v49 + 14) = &qword_27CAC9470;
    OUTLINED_FUNCTION_896();
    _os_log_impl(v55, v56, v57, v58, v59, 0x16u);
    OUTLINED_FUNCTION_1008();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440](v60);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440](v61);
  }

  else
  {

    sub_2166997CC(v68, &qword_27CAC9470, &qword_21705FCC0);
  }

  OUTLINED_FUNCTION_488();
  sub_216DD4790();

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1245();
  if (v64)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v62) = v63;
    OUTLINED_FUNCTION_419();
    sub_2166997CC(v1, &qword_27CAC9470, &qword_21705FCC0);
    OUTLINED_FUNCTION_26();
  }
}

void sub_216D67590(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
        v22 = v7;
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8, &qword_2170392C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = &qword_2170392C8;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9930, &qword_217060540);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0, &qword_21705F7D0);
  }
}

void sub_216D67BB4(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = a2;
  v51 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  MEMORY[0x28223BE20](v4);
  v6 = &v44[-v5];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91D0, &qword_21705F7F0);
  MEMORY[0x28223BE20](v49);
  v46 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v48 = &v44[-v9];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v47);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v44[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v44[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v44[-v19];
  swift_beginAccess();
  sub_216DD9F00();
  v50 = v20;
  sub_216DD9F00();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2166997CC(v17, &qword_27CAC06B0, &qword_2170392C8);
LABEL_9:
    v23 = v11;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2166997CC(v17, &qword_27CAC06A8, &qword_2170392C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
    goto LABEL_9;
  }

  sub_216DD9B04();
  v23 = v11;
  if ((v45 & 1) == 0)
  {
    sub_216DD9F00();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
  }

  sub_2166997CC(v6, &qword_27CAC06B8, &qword_2170392D0);
LABEL_10:
  v24 = v48;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v25 = sub_217007CA4();
  __swift_project_value_buffer(v25, qword_280E2C160);
  sub_216DD9F00();
  sub_216DD9F00();
  v26 = sub_217007C84();
  v27 = sub_21700EDA4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v28 = 136446466;
    sub_216DD9F00();
    v29 = sub_21700E5B4();
    v30 = v24;
    v31 = v29;
    v33 = v32;
    sub_2166997CC(v30, &qword_27CAC91D0, &qword_21705F7F0);
    v34 = sub_2166A85FC(v31, v33, &v52);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    sub_216DD9F00();
    v35 = sub_21700E5B4();
    v37 = v36;
    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
    v38 = sub_2166A85FC(v35, v37, &v52);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_216679000, v26, v27, "Update started: %{public}s from state: %{public}s", v28, 0x16u);
    v39 = v48;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v39, -1, -1);
    MEMORY[0x21CEA1440](v28, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
    sub_2166997CC(v24, &qword_27CAC91D0, &qword_21705F7F0);
  }

  sub_216DD4790();
  v40 = *(*v3 + 272);
  v41 = *(v3 + v40);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v40) = v43;
    sub_216D6374C();
    sub_2166997CC(v50, &qword_27CAC91C0, &qword_21705F7D0);
  }
}

void sub_216D682B0(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
        v22 = v7;
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8, &qword_2170392C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = &qword_2170392C8;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91E0, &qword_21705F850);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0, &qword_21705F7D0);
  }
}

void sub_216D688D4(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
        v22 = v7;
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8, &qword_2170392C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = &qword_2170392C8;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91E8, &qword_21705F878);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0, &qword_21705F7D0);
  }
}

void sub_216D68EF8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0698;
        v21 = &qword_2170392A8;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
        v22 = v7;
        v20 = &qword_27CAC0698;
        v21 = &qword_2170392A8;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0690, &qword_2170392A0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06A0;
  v21 = &qword_2170392B0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90D0, &qword_21705F608);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC8EB8, &unk_21705F2E0);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC8EB8, &unk_21705F2E0);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC8EB8, &unk_21705F2E0);
  }
}

void sub_216D6951C(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = a2;
  v51 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
  MEMORY[0x28223BE20](v4);
  v6 = &v44[-v5];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EC8, &qword_21705F310);
  MEMORY[0x28223BE20](v49);
  v46 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v48 = &v44[-v9];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v47);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v44[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v44[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v44[-v19];
  swift_beginAccess();
  sub_216DD9F00();
  v50 = v20;
  sub_216DD9F00();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2166997CC(v17, &qword_27CAC06A0, &qword_2170392B0);
LABEL_9:
    v23 = v11;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2166997CC(v17, &qword_27CAC0690, &qword_2170392A0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
    goto LABEL_9;
  }

  sub_216DD9B04();
  v23 = v11;
  if ((v45 & 1) == 0)
  {
    sub_216DD9F00();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
  }

  sub_2166997CC(v6, &qword_27CAC0698, &qword_2170392A8);
LABEL_10:
  v24 = v48;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v25 = sub_217007CA4();
  __swift_project_value_buffer(v25, qword_280E2C160);
  sub_216DD9F00();
  sub_216DD9F00();
  v26 = sub_217007C84();
  v27 = sub_21700EDA4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v28 = 136446466;
    sub_216DD9F00();
    v29 = sub_21700E5B4();
    v30 = v24;
    v31 = v29;
    v33 = v32;
    sub_2166997CC(v30, &qword_27CAC8EC8, &qword_21705F310);
    v34 = sub_2166A85FC(v31, v33, &v52);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    sub_216DD9F00();
    v35 = sub_21700E5B4();
    v37 = v36;
    sub_2166997CC(v23, &qword_27CAC8EB8, &unk_21705F2E0);
    v38 = sub_2166A85FC(v35, v37, &v52);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_216679000, v26, v27, "Update started: %{public}s from state: %{public}s", v28, 0x16u);
    v39 = v48;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v39, -1, -1);
    MEMORY[0x21CEA1440](v28, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC8EB8, &unk_21705F2E0);
    sub_2166997CC(v24, &qword_27CAC8EC8, &qword_21705F310);
  }

  sub_216DD4790();
  v40 = *(*v3 + 272);
  v41 = *(v3 + v40);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v40) = v43;
    sub_216D6374C();
    sub_2166997CC(v50, &qword_27CAC8EB8, &unk_21705F2E0);
  }
}

void sub_216D69C18(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0698;
        v21 = &qword_2170392A8;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
        v22 = v7;
        v20 = &qword_27CAC0698;
        v21 = &qword_2170392A8;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0690, &qword_2170392A0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06A0;
  v21 = &qword_2170392B0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90D8, &qword_21705F630);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC8EB8, &unk_21705F2E0);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC8EB8, &unk_21705F2E0);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC8EB8, &unk_21705F2E0);
  }
}

void sub_216D6A23C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0698;
        v21 = &qword_2170392A8;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
        v22 = v7;
        v20 = &qword_27CAC0698;
        v21 = &qword_2170392A8;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0690, &qword_2170392A0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06A0;
  v21 = &qword_2170392B0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90F8, &qword_21705F680);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC8EB8, &unk_21705F2E0);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC8EB8, &unk_21705F2E0);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC8EB8, &unk_21705F2E0);
  }
}

void sub_216D6A860(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0698;
        v21 = &qword_2170392A8;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
        v22 = v7;
        v20 = &qword_27CAC0698;
        v21 = &qword_2170392A8;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0690, &qword_2170392A0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06A0;
  v21 = &qword_2170392B0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9100, &qword_21705F6A8);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC8EB8, &unk_21705F2E0);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC8EB8, &unk_21705F2E0);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC8EB8, &unk_21705F2E0);
  }
}

void sub_216D6AE84(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0698;
        v21 = &qword_2170392A8;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
        v22 = v7;
        v20 = &qword_27CAC0698;
        v21 = &qword_2170392A8;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0690, &qword_2170392A0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06A0;
  v21 = &qword_2170392B0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB0, &qword_21705F2B0);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC8EB8, &unk_21705F2E0);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC8EB8, &unk_21705F2E0);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC8EB8, &unk_21705F2E0);
  }
}

void sub_216D6B4A8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0698;
        v21 = &qword_2170392A8;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
        v22 = v7;
        v20 = &qword_27CAC0698;
        v21 = &qword_2170392A8;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0690, &qword_2170392A0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06A0;
  v21 = &qword_2170392B0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EC0, &unk_21705F2F0);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC8EB8, &unk_21705F2E0);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC8EB8, &unk_21705F2E0);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC8EB8, &unk_21705F2E0);
  }
}

void sub_216D6BACC(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
        v22 = v7;
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8, &qword_2170392C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = &qword_2170392C8;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91B8, &qword_21705F7A8);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0, &qword_21705F7D0);
  }
}

void sub_216D6C0F0(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
        v22 = v7;
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8, &qword_2170392C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = &qword_2170392C8;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C8, &qword_21705F7D8);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0, &qword_21705F7D0);
  }
}

void sub_216D6C714(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
        v22 = v7;
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8, &qword_2170392C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = &qword_2170392C8;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC92E0, &qword_21705FA38);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0, &qword_21705F7D0);
  }
}

void sub_216D6CD38(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
        v22 = v7;
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8, &qword_2170392C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = &qword_2170392C8;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC92E8, &qword_21705FA60);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0, &qword_21705F7D0);
  }
}