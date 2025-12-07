uint64_t sub_216D38F2C(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D39908(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D3A2E4(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D3ACC0(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D3B65C(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D3C038(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D3CA14(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D3D3F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D3DD8C(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D3E768(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D3F144(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB68, &qword_21705F1C0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for AlbumTrackLockup(0);
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
              sub_216938114(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216938114(v45 > 1, v46 + 1, 1, v36);
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
            sub_2166997CC(v37, &qword_27CABEB68, &qword_21705F1C0);
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
            sub_216938114(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216938114(v48 > 1, v49 + 1, 1, v36);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB80, &unk_217031010);
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

uint64_t sub_216D3FB20(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB88, &qword_217031020);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for AppsWithAccessComponentModel(0);
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
              sub_2169380D4(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_2169380D4(v45 > 1, v46 + 1, 1, v36);
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
            sub_2166997CC(v37, &qword_27CABEB88, &qword_217031020);
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
            sub_2169380D4(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_2169380D4(v48 > 1, v49 + 1, 1, v36);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBA0, &qword_217031038);
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

uint64_t sub_216D404FC(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDB0, &qword_217031250);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for TrackLockup(0);
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
              sub_216938094(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216938094(v45 > 1, v46 + 1, 1, v36);
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
            sub_2166997CC(v37, &qword_27CABEDB0, &qword_217031250);
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
            sub_216938094(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216938094(v48 > 1, v49 + 1, 1, v36);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDC8, &qword_217031268);
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

uint64_t sub_216D40ED8(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBA8, &qword_217031040);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for BubbleLockup(0);
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
              sub_216938054(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216938054(v45 > 1, v46 + 1, 1, v36);
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
            sub_2166997CC(v37, &qword_27CABEBA8, &qword_217031040);
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
            sub_216938054(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216938054(v48 > 1, v49 + 1, 1, v36);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBC0, &unk_21705F1D0);
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

uint64_t sub_216D418B4(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBC8, &qword_217031060);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for FlowcaseLockup(0);
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
              sub_216938014(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216938014(v45 > 1, v46 + 1, 1, v36);
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
            sub_2166997CC(v37, &qword_27CABEBC8, &qword_217031060);
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
            sub_216938014(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216938014(v48 > 1, v49 + 1, 1, v36);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBE0, &qword_217031078);
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

uint64_t sub_216D42290(uint64_t a1, uint64_t a2)
{
  *&v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBE8, &qword_217031080);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v71[-v4];
  v5 = type metadata accessor for HorizontalLockup(0);
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
              sub_216937FD4(0, *(v39 + 16) + 1, 1, v39);
              v39 = v67;
            }

            v49 = *(v39 + 16);
            v48 = *(v39 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_216937FD4(v48 > 1, v49 + 1, 1, v39);
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
            sub_2166997CC(v40, &qword_27CABEBE8, &qword_217031080);
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
            sub_216937FD4(0, *(v39 + 16) + 1, 1, v39);
            v39 = v65;
          }

          v52 = *(v39 + 16);
          v51 = *(v39 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_216937FD4(v51 > 1, v52 + 1, 1, v39);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC00, &unk_21705F1E0);
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

uint64_t sub_216D42C2C(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC08, &qword_2170310A0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for HorizontalPosterLockup(0);
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
              sub_216937F94(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937F94(v45 > 1, v46 + 1, 1, v36);
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
            sub_2166997CC(v37, &qword_27CABEC08, &qword_2170310A0);
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
            sub_216937F94(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937F94(v48 > 1, v49 + 1, 1, v36);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC20, &unk_2170310B8);
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

uint64_t sub_216D43608(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for LinkComponentModel(0);
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
              sub_216937F54(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937F54(v45 > 1, v46 + 1, 1, v36);
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
            sub_2166997CC(v37, &qword_27CAB7A30, &qword_217017F30);
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
            sub_216937F54(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937F54(v48 > 1, v49 + 1, 1, v36);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC38, &qword_2170310D8);
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

uint64_t sub_216D43FE4(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D449C0(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D4539C(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D45D78(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D46714(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D470F0(uint64_t a1, uint64_t a2)
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

void sub_216D47ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_210_0(v17, v18, v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED18, &qword_2170311C0);
  OUTLINED_FUNCTION_36(v21);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = OUTLINED_FUNCTION_363(v23, v103);
  v25 = type metadata accessor for SocialOnboardingSharedPlaylistLockup(v24);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_448(v28, v29, v30, v31, v32, v33, v34, v35, v104);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_309(v38, v39, v40, v41, v42, v43, v44, v45, v105);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_445(v48);
  if (v11)
  {
    sub_21700E384();
    OUTLINED_FUNCTION_1227();
    if (v14)
    {
      v107 = *(v25 + 24);
      OUTLINED_FUNCTION_153_0();
      OUTLINED_FUNCTION_863();
      do
      {
        v11 = type metadata accessor for SocialOnboardingSharedPlaylistLockup;
        sub_216DDA0A0(v16, v13);
        OUTLINED_FUNCTION_1025();
        OUTLINED_FUNCTION_610();
        sub_216DDA0A0(v49, v50);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_837();
        OUTLINED_FUNCTION_612();
        if (v51)
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          sub_21700F824();
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_1251();
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED30, &unk_21705F210);
        if (OUTLINED_FUNCTION_844(v52))
        {
          OUTLINED_FUNCTION_1290();
          OUTLINED_FUNCTION_43_17();
          if (!v53)
          {
            goto LABEL_45;
          }
        }

        v10 = v108[0];
        if (v15)
        {
          OUTLINED_FUNCTION_937();
          v54 = OUTLINED_FUNCTION_457();
          sub_2166CE10C(v54, v55);
          sub_216788110(v109);
          OUTLINED_FUNCTION_72_17();
          OUTLINED_FUNCTION_1099();
        }

        else
        {
          OUTLINED_FUNCTION_278();
          OUTLINED_FUNCTION_937();
          OUTLINED_FUNCTION_36_37();
          v56 = OUTLINED_FUNCTION_928();
          sub_216DDA0F4(v56, v57);
          sub_216788110(v109);
          OUTLINED_FUNCTION_72_17();
          OUTLINED_FUNCTION_1099();
          OUTLINED_FUNCTION_52_10();
          if (v51)
          {
            goto LABEL_44;
          }

          *(v108[0] + 16) = v58;
        }

        OUTLINED_FUNCTION_1202();
      }

      while (!v53);
    }
  }

  else
  {
    v10 = sub_21700E384();
  }

  OUTLINED_FUNCTION_864();
  if (!v12)
  {
LABEL_40:

    OUTLINED_FUNCTION_1209();
    goto LABEL_42;
  }

  v60 = MEMORY[0x277D84F90];
  v59.n128_u64[0] = 136315394;
  OUTLINED_FUNCTION_288(v59);
  while (1)
  {
    OUTLINED_FUNCTION_461();
    sub_216DD9F00();
    if ((v109[40] & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_836();
    OUTLINED_FUNCTION_1201();
    sub_21700F364();
    if (*(v10 + 16) && (OUTLINED_FUNCTION_1284(), (v61 & 1) != 0))
    {
      OUTLINED_FUNCTION_857();

      OUTLINED_FUNCTION_439();
      OUTLINED_FUNCTION_806();
      v60 = v106;
      sub_216DDA0A0(v62, v106);
      sub_216788110(v108);
      OUTLINED_FUNCTION_854();
      if ((OUTLINED_FUNCTION_1283() & 1) == 0)
      {
        v89 = OUTLINED_FUNCTION_29_0();
        sub_216937D94(v89, v90, v91, v11);
        v11 = v92;
      }

      OUTLINED_FUNCTION_354();
      if (v63)
      {
        OUTLINED_FUNCTION_897();
        sub_216937D94(v93, v94, v95, v96);
      }

      OUTLINED_FUNCTION_1289();
      OUTLINED_FUNCTION_209_0();
      OUTLINED_FUNCTION_36_37();
      v64 = OUTLINED_FUNCTION_1028();
      sub_216DDA0F4(v64, v65);
      OUTLINED_FUNCTION_776();
    }

    else
    {
      sub_216788110(v108);
      if (qword_27CAB5B70 != -1)
      {
        swift_once();
      }

      v72 = sub_217007CA4();
      __swift_project_value_buffer(v72, qword_27CABEB28);
      OUTLINED_FUNCTION_47();
      swift_bridgeObjectRetain_n();
      sub_21700DF14();
      v11 = sub_217007C84();
      sub_21700ED84();
      OUTLINED_FUNCTION_1288();
      v73 = OUTLINED_FUNCTION_922();
      if (os_log_type_enabled(v73, v74))
      {
        OUTLINED_FUNCTION_544();
        swift_slowAlloc();
        OUTLINED_FUNCTION_556();
        v75 = swift_slowAlloc();
        OUTLINED_FUNCTION_447(v75);
        OUTLINED_FUNCTION_47_13();

        OUTLINED_FUNCTION_611();
        OUTLINED_FUNCTION_1217();
        sub_21700E394();
        OUTLINED_FUNCTION_1130();
        OUTLINED_FUNCTION_68_13();
        swift_bridgeObjectRelease_n();
        v76 = OUTLINED_FUNCTION_54_3();
        sub_2166A85FC(v76, v77, v78);
        OUTLINED_FUNCTION_1291();
        OUTLINED_FUNCTION_1258();
        OUTLINED_FUNCTION_1298(&dword_216679000, v11, v79, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s");
        OUTLINED_FUNCTION_1041();
        OUTLINED_FUNCTION_929();
        OUTLINED_FUNCTION_2_8();
        MEMORY[0x21CEA1440]();
        OUTLINED_FUNCTION_776();
        OUTLINED_FUNCTION_2_8();
        MEMORY[0x21CEA1440]();
      }

      else
      {

        OUTLINED_FUNCTION_68_13();
        swift_bridgeObjectRelease_n();
      }

      OUTLINED_FUNCTION_775();
      v60 = v107;
    }

LABEL_38:
    OUTLINED_FUNCTION_1257();
    if (v53)
    {
      goto LABEL_40;
    }
  }

  OUTLINED_FUNCTION_866();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
  if (OUTLINED_FUNCTION_442(v66))
  {
    OUTLINED_FUNCTION_303();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
    OUTLINED_FUNCTION_36_37();
    OUTLINED_FUNCTION_1054();
    OUTLINED_FUNCTION_175_0();
    OUTLINED_FUNCTION_1297();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = OUTLINED_FUNCTION_29_0();
      sub_216937D94(v80, v81, v82, v60);
      v60 = v83;
    }

    OUTLINED_FUNCTION_861();
    if (v63)
    {
      OUTLINED_FUNCTION_766();
      sub_216937D94(v84, v85, v86, v87);
      v60 = v88;
    }

    sub_216DDA050();
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    *(v60 + 16) = v11;
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_867();
    OUTLINED_FUNCTION_36_37();
    sub_216DDA0F4(a10, v71);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_412();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  sub_2166997CC(v14, &qword_27CABED18, &qword_2170311C0);
  sub_2169BB698();
  OUTLINED_FUNCTION_485();
  v101 = swift_allocError();
  OUTLINED_FUNCTION_841(v101, v102);
  __swift_destroy_boxed_opaque_existential_1Tm(v108);
LABEL_42:
  OUTLINED_FUNCTION_917();
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216D480E8(uint64_t a1, uint64_t a2)
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

void sub_216D48AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_210_0(v17, v18, v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED58, &qword_217031200);
  OUTLINED_FUNCTION_36(v21);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = OUTLINED_FUNCTION_363(v23, v103);
  v25 = type metadata accessor for SquareLockup(v24);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_448(v28, v29, v30, v31, v32, v33, v34, v35, v104);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_309(v38, v39, v40, v41, v42, v43, v44, v45, v105);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_445(v48);
  if (v11)
  {
    sub_21700E384();
    OUTLINED_FUNCTION_1227();
    if (v14)
    {
      v107 = *(v25 + 68);
      OUTLINED_FUNCTION_153_0();
      OUTLINED_FUNCTION_863();
      do
      {
        v11 = type metadata accessor for SquareLockup;
        sub_216DDA0A0(v16, v13);
        OUTLINED_FUNCTION_1025();
        OUTLINED_FUNCTION_610();
        sub_216DDA0A0(v49, v50);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_837();
        OUTLINED_FUNCTION_612();
        if (v51)
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          sub_21700F824();
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_1251();
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED70, &unk_21705F220);
        if (OUTLINED_FUNCTION_844(v52))
        {
          OUTLINED_FUNCTION_1290();
          OUTLINED_FUNCTION_43_17();
          if (!v53)
          {
            goto LABEL_45;
          }
        }

        v10 = v108[0];
        if (v15)
        {
          OUTLINED_FUNCTION_937();
          v54 = OUTLINED_FUNCTION_457();
          sub_2166CE10C(v54, v55);
          sub_216788110(v109);
          OUTLINED_FUNCTION_74_15();
          OUTLINED_FUNCTION_1099();
        }

        else
        {
          OUTLINED_FUNCTION_278();
          OUTLINED_FUNCTION_937();
          OUTLINED_FUNCTION_47_30();
          v56 = OUTLINED_FUNCTION_928();
          sub_216DDA0F4(v56, v57);
          sub_216788110(v109);
          OUTLINED_FUNCTION_74_15();
          OUTLINED_FUNCTION_1099();
          OUTLINED_FUNCTION_52_10();
          if (v51)
          {
            goto LABEL_44;
          }

          *(v108[0] + 16) = v58;
        }

        OUTLINED_FUNCTION_1202();
      }

      while (!v53);
    }
  }

  else
  {
    v10 = sub_21700E384();
  }

  OUTLINED_FUNCTION_864();
  if (!v12)
  {
LABEL_40:

    OUTLINED_FUNCTION_1209();
    goto LABEL_42;
  }

  v60 = MEMORY[0x277D84F90];
  v59.n128_u64[0] = 136315394;
  OUTLINED_FUNCTION_288(v59);
  while (1)
  {
    OUTLINED_FUNCTION_461();
    sub_216DD9F00();
    if ((v109[40] & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_836();
    OUTLINED_FUNCTION_1201();
    sub_21700F364();
    if (*(v10 + 16) && (OUTLINED_FUNCTION_1284(), (v61 & 1) != 0))
    {
      OUTLINED_FUNCTION_857();

      OUTLINED_FUNCTION_439();
      OUTLINED_FUNCTION_807();
      v60 = v106;
      sub_216DDA0A0(v62, v106);
      sub_216788110(v108);
      OUTLINED_FUNCTION_854();
      if ((OUTLINED_FUNCTION_1283() & 1) == 0)
      {
        v89 = OUTLINED_FUNCTION_29_0();
        sub_216937D14(v89, v90, v91, v11);
        v11 = v92;
      }

      OUTLINED_FUNCTION_354();
      if (v63)
      {
        OUTLINED_FUNCTION_897();
        sub_216937D14(v93, v94, v95, v96);
      }

      OUTLINED_FUNCTION_1289();
      OUTLINED_FUNCTION_209_0();
      OUTLINED_FUNCTION_47_30();
      v64 = OUTLINED_FUNCTION_1028();
      sub_216DDA0F4(v64, v65);
      OUTLINED_FUNCTION_776();
    }

    else
    {
      sub_216788110(v108);
      if (qword_27CAB5B70 != -1)
      {
        swift_once();
      }

      v72 = sub_217007CA4();
      __swift_project_value_buffer(v72, qword_27CABEB28);
      OUTLINED_FUNCTION_47();
      swift_bridgeObjectRetain_n();
      sub_21700DF14();
      v11 = sub_217007C84();
      sub_21700ED84();
      OUTLINED_FUNCTION_1288();
      v73 = OUTLINED_FUNCTION_922();
      if (os_log_type_enabled(v73, v74))
      {
        OUTLINED_FUNCTION_544();
        swift_slowAlloc();
        OUTLINED_FUNCTION_556();
        v75 = swift_slowAlloc();
        OUTLINED_FUNCTION_447(v75);
        OUTLINED_FUNCTION_47_13();

        OUTLINED_FUNCTION_611();
        OUTLINED_FUNCTION_1217();
        sub_21700E394();
        OUTLINED_FUNCTION_1130();
        OUTLINED_FUNCTION_68_13();
        swift_bridgeObjectRelease_n();
        v76 = OUTLINED_FUNCTION_54_3();
        sub_2166A85FC(v76, v77, v78);
        OUTLINED_FUNCTION_1291();
        OUTLINED_FUNCTION_1258();
        OUTLINED_FUNCTION_1298(&dword_216679000, v11, v79, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s");
        OUTLINED_FUNCTION_1041();
        OUTLINED_FUNCTION_929();
        OUTLINED_FUNCTION_2_8();
        MEMORY[0x21CEA1440]();
        OUTLINED_FUNCTION_776();
        OUTLINED_FUNCTION_2_8();
        MEMORY[0x21CEA1440]();
      }

      else
      {

        OUTLINED_FUNCTION_68_13();
        swift_bridgeObjectRelease_n();
      }

      OUTLINED_FUNCTION_775();
      v60 = v107;
    }

LABEL_38:
    OUTLINED_FUNCTION_1257();
    if (v53)
    {
      goto LABEL_40;
    }
  }

  OUTLINED_FUNCTION_866();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
  if (OUTLINED_FUNCTION_442(v66))
  {
    OUTLINED_FUNCTION_303();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
    OUTLINED_FUNCTION_47_30();
    OUTLINED_FUNCTION_1054();
    OUTLINED_FUNCTION_176_2();
    OUTLINED_FUNCTION_1297();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = OUTLINED_FUNCTION_29_0();
      sub_216937D14(v80, v81, v82, v60);
      v60 = v83;
    }

    OUTLINED_FUNCTION_861();
    if (v63)
    {
      OUTLINED_FUNCTION_766();
      sub_216937D14(v84, v85, v86, v87);
      v60 = v88;
    }

    sub_216DDA050();
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    *(v60 + 16) = v11;
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_867();
    OUTLINED_FUNCTION_47_30();
    sub_216DDA0F4(a10, v71);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_412();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  sub_2166997CC(v14, &qword_27CABED58, &qword_217031200);
  sub_2169BB698();
  OUTLINED_FUNCTION_485();
  v101 = swift_allocError();
  OUTLINED_FUNCTION_841(v101, v102);
  __swift_destroy_boxed_opaque_existential_1Tm(v108);
LABEL_42:
  OUTLINED_FUNCTION_917();
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216D490E0(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D49A7C(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D4A458(uint64_t a1, uint64_t a2)
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

uint64_t sub_216D4AE34(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB68, &qword_21705F1C0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for AlbumTrackLockup(0);
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
              sub_216938114(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216938114(v45 > 1, v46 + 1, 1, v36);
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
            sub_2166997CC(v37, &qword_27CABEB68, &qword_21705F1C0);
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
            sub_216938114(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216938114(v48 > 1, v49 + 1, 1, v36);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB80, &unk_217031010);
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

uint64_t sub_216D4B810(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB88, &qword_217031020);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for AppsWithAccessComponentModel(0);
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
              sub_2169380D4(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_2169380D4(v45 > 1, v46 + 1, 1, v36);
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
            sub_2166997CC(v37, &qword_27CABEB88, &qword_217031020);
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
            sub_2169380D4(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_2169380D4(v48 > 1, v49 + 1, 1, v36);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBA0, &qword_217031038);
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

uint64_t sub_216D4C1EC(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDB0, &qword_217031250);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for TrackLockup(0);
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
              sub_216938094(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216938094(v45 > 1, v46 + 1, 1, v36);
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
            sub_2166997CC(v37, &qword_27CABEDB0, &qword_217031250);
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
            sub_216938094(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216938094(v48 > 1, v49 + 1, 1, v36);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDC8, &qword_217031268);
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

uint64_t sub_216D4CBC8(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBA8, &qword_217031040);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for BubbleLockup(0);
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
              sub_216938054(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216938054(v45 > 1, v46 + 1, 1, v36);
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
            sub_2166997CC(v37, &qword_27CABEBA8, &qword_217031040);
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
            sub_216938054(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216938054(v48 > 1, v49 + 1, 1, v36);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBC0, &unk_21705F1D0);
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

uint64_t sub_216D4D5A4(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBC8, &qword_217031060);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for FlowcaseLockup(0);
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
              sub_216938014(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216938014(v45 > 1, v46 + 1, 1, v36);
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
            sub_2166997CC(v37, &qword_27CABEBC8, &qword_217031060);
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
            sub_216938014(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216938014(v48 > 1, v49 + 1, 1, v36);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBE0, &qword_217031078);
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

uint64_t sub_216D4DF80(uint64_t a1, uint64_t a2)
{
  *&v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBE8, &qword_217031080);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v71[-v4];
  v5 = type metadata accessor for HorizontalLockup(0);
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
              sub_216937FD4(0, *(v39 + 16) + 1, 1, v39);
              v39 = v67;
            }

            v49 = *(v39 + 16);
            v48 = *(v39 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_216937FD4(v48 > 1, v49 + 1, 1, v39);
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
            sub_2166997CC(v40, &qword_27CABEBE8, &qword_217031080);
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
            sub_216937FD4(0, *(v39 + 16) + 1, 1, v39);
            v39 = v65;
          }

          v52 = *(v39 + 16);
          v51 = *(v39 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_216937FD4(v51 > 1, v52 + 1, 1, v39);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC00, &unk_21705F1E0);
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

uint64_t sub_216D4E91C(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC08, &qword_2170310A0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for HorizontalPosterLockup(0);
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
              sub_216937F94(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937F94(v45 > 1, v46 + 1, 1, v36);
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
            sub_2166997CC(v37, &qword_27CABEC08, &qword_2170310A0);
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
            sub_216937F94(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937F94(v48 > 1, v49 + 1, 1, v36);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC20, &unk_2170310B8);
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

uint64_t sub_216D4F2F8(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for LinkComponentModel(0);
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
              sub_216937F54(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937F54(v45 > 1, v46 + 1, 1, v36);
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
            sub_2166997CC(v37, &qword_27CAB7A30, &qword_217017F30);
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
            sub_216937F54(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937F54(v48 > 1, v49 + 1, 1, v36);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC38, &qword_2170310D8);
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