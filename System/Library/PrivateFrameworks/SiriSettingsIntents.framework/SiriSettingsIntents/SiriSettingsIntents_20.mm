uint64_t sub_268F7094C(char a1)
{

  sub_268D3DB88(a1 & 1);
}

uint64_t sub_268F70A08(void *a1)
{
  v10[5] = a1;
  v6 = sub_268F9B284();
  v1 = sub_268DC7AE8();
  v7 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "Checking for intent ambiguity.", 30, 2);

  v10[4] = [a1 action];
  v10[3] = 1;
  type metadata accessor for INSettingAction(0);
  sub_268DD25C8();
  v9 = sub_268F9B754();
  MEMORY[0x277D82BE0](a1);
  if (v9)
  {
    v10[0] = [a1 numericValue];
    v5 = v10[0] == 0;
    sub_268D35038(v10);
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BE0](a1);
  if (v4)
  {
    v10[2] = [a1 boundedValue];
    v10[1] = 0;
    type metadata accessor for INBoundedSettingValue(0);
    sub_268CD94D4();
    v3 = sub_268F9B754();
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x277D82BD8](a1);
  return v3 & 1;
}

id sub_268F70C6C(uint64_t a1, char a2)
{
  sub_268CDA484();
  v5 = sub_268CD42AC(9, 0);
  sub_268E948B8(a2);
  v4 = sub_268F9AE14();

  [v5 setErrorDetail_];
  MEMORY[0x277D82BD8](v4);
  return v5;
}

uint64_t sub_268F70D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, void (*a7)(void), uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14)
{
  v45 = a8;
  v46 = a7;
  v47 = a4;
  v48 = a3;
  v49 = a2;
  v50 = a11;
  v51 = a10;
  v52 = a9;
  v53 = a14;
  v54 = a13;
  v55 = a6;
  v56 = a5;
  v57 = 0;
  v60 = 0;
  v58 = 0;
  v74 = a1;
  v73 = a9;
  v72 = a10;
  v71 = a11;
  v70 = a12;
  v69 = a2;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v65 = a6;
  v63 = a7;
  v64 = a8;
  v61 = a13;
  v62 = a14;
  v59 = sub_268F7112C(a1, a9, a10, a11, a12);
  if (v14)
  {
    v33 = sub_268F9B294();
    v35 = *sub_268DC7AE8();
    v29 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v34 = sub_268F9B734();
    sub_268F9AC14(v33, &dword_268CBE000, v35, "[handleNumericSettingIntent] Unable to determine the requested value of the setting", 83, 2);

    v36 = sub_268F710D8(0, 8);
    v46();

    return v58;
  }

  else
  {
    v44 = v59;
    v15 = v58;
    v39 = v59;
    v60 = v59;
    v40 = *sub_268DC7AE8();
    v38 = v40;
    v16 = v40;

    v41 = v32;
    v17 = MEMORY[0x28223BE20](v48, v47, v56, v40);
    v42 = v32;
    v31[2] = v18;
    v31[3] = v19;
    v31[4] = v20;
    v31[5] = v21;
    v31[6] = v22;
    v31[7] = v45;
    v31[8] = v49;
    v31[9] = v23;
    *&v31[10] = v17;
    sub_268DB944C(v25, v26, v27, v28, v24 & 1, sub_268F75130, v31, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v43 = v15;

    return v43;
  }
}

uint64_t sub_268F7112C(void *a1, double a2, double a3, double a4, double a5)
{
  v105 = 0;
  v90 = 0;
  v110 = a1;
  v109 = a2;
  v108 = a3;
  v107 = a4;
  v106 = a5;
  v84 = sub_268DDDBF8(a3, a4);
  if (v5)
  {
    v64 = swift_allocObject();
    v105 = v64 + 16;
    v65 = [a1 numericValue];
    if (v65 && (v63 = [v65 value], *&v8 = MEMORY[0x277D82BD8](v65).n128_u64[0], v63))
    {
      [v63 doubleValue];
      v62 = v9;
      MEMORY[0x277D82BD8](v63);
      *(v64 + 16) = sub_268E558F8(v62);
      *(v64 + 24) = 0;
    }

    else
    {
      *(v64 + 16) = 0;
      *(v64 + 24) = 1;
    }

    v61 = sub_268F9B284();
    v10 = sub_268DC7AE8();
    log = *v10;
    MEMORY[0x277D82BE0](*v10);

    v29 = swift_allocObject();
    *(v29 + 16) = v64;
    *(v29 + 24) = a5;
    v31 = swift_allocObject();
    *(v31 + 16) = a2;
    MEMORY[0x277D82BE0](a1);
    v33 = swift_allocObject();
    *(v33 + 16) = a1;
    v35 = swift_allocObject();
    *(v35 + 16) = a5;
    v37 = swift_allocObject();
    *(v37 + 16) = a3;
    v39 = swift_allocObject();
    *(v39 + 16) = a4;
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_268F7522C;
    *(v30 + 24) = v29;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_268DD25B0;
    *(v43 + 24) = v30;
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_268DD1060;
    *(v32 + 24) = v31;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_268DD25B0;
    *(v46 + 24) = v32;
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_268F7525C;
    *(v34 + 24) = v33;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_268F75848;
    *(v49 + 24) = v34;
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    v51 = swift_allocObject();
    *(v51 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_268DD1060;
    *(v36 + 24) = v35;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_268DD25B0;
    *(v52 + 24) = v36;
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_268DD1060;
    *(v38 + 24) = v37;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_268DD25B0;
    *(v55 + 24) = v38;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_268DD1060;
    *(v40 + 24) = v39;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_268DD25B0;
    *(v58 + 24) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    sub_268F9B734();
    v59 = v11;

    *v59 = sub_268CD7600;
    v59[1] = v41;

    v59[2] = sub_268CD7600;
    v59[3] = v42;

    v59[4] = sub_268DD25BC;
    v59[5] = v43;

    v59[6] = sub_268CD7600;
    v59[7] = v44;

    v59[8] = sub_268CD7600;
    v59[9] = v45;

    v59[10] = sub_268DD25BC;
    v59[11] = v46;

    v59[12] = sub_268CD7600;
    v59[13] = v47;

    v59[14] = sub_268CD7600;
    v59[15] = v48;

    v59[16] = sub_268F75854;
    v59[17] = v49;

    v59[18] = sub_268CD7600;
    v59[19] = v50;

    v59[20] = sub_268CD7600;
    v59[21] = v51;

    v59[22] = sub_268DD25BC;
    v59[23] = v52;

    v59[24] = sub_268CD7600;
    v59[25] = v53;

    v59[26] = sub_268CD7600;
    v59[27] = v54;

    v59[28] = sub_268DD25BC;
    v59[29] = v55;

    v59[30] = sub_268CD7600;
    v59[31] = v56;

    v59[32] = sub_268CD7600;
    v59[33] = v57;

    v59[34] = sub_268DD25BC;
    v59[35] = v58;
    sub_268CD0F7C();

    if (os_log_type_enabled(log, v61))
    {
      v26 = sub_268F9B3A4();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v27 = sub_268CD5448(0, v25, v25);
      v28 = sub_268CD5448(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v95[0] = v26;
      v94 = v27;
      v93 = v28;
      sub_268CD549C(0, v95);
      sub_268CD549C(6, v95);
      v91 = sub_268CD7600;
      v92 = v41;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268CD7600;
      v92 = v42;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268DD25BC;
      v92 = v43;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268CD7600;
      v92 = v44;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268CD7600;
      v92 = v45;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268DD25BC;
      v92 = v46;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268CD7600;
      v92 = v47;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268CD7600;
      v92 = v48;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268F75854;
      v92 = v49;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268CD7600;
      v92 = v50;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268CD7600;
      v92 = v51;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268DD25BC;
      v92 = v52;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268CD7600;
      v92 = v53;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268CD7600;
      v92 = v54;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268DD25BC;
      v92 = v55;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268CD7600;
      v92 = v56;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268CD7600;
      v92 = v57;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      v91 = sub_268DD25BC;
      v92 = v58;
      sub_268CD54B0(&v91, v95, &v94, &v93);
      _os_log_impl(&dword_268CBE000, log, v61, "[getRequestedValue] specified value: %f, currentValue: %f, indent.action: %ld, defaultAdjustment: %f, min: %f, max: %f", v26, 0x3Eu);
      sub_268CD54FC(v27, 0, v25);
      sub_268CD54FC(v28, 0, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();
    }

    else
    {
    }

    v24 = [a1 action];
    if (v24 == 2)
    {
      v98 = a4;
      swift_beginAccess();
      v22 = *(v64 + 16);
      v23 = *(v64 + 24);
      swift_endAccess();
      v96 = v22;
      v97 = v23 & 1;
      if (v23)
      {
        v21 = a5;
      }

      else
      {
        v21 = v96;
      }

      *&v95[1] = a2 + v21;
      sub_268F9B794();
      v20 = v99;

      return v20;
    }

    else if (v24 == 3)
    {
      v103 = a3;
      swift_beginAccess();
      v18 = *(v64 + 16);
      v19 = *(v64 + 24);
      swift_endAccess();
      v101 = v18;
      v102 = v19 & 1;
      if (v19)
      {
        v17 = a5;
      }

      else
      {
        v17 = v101;
      }

      v100 = a2 - v17;
      sub_268F9B784();
      v16 = v104;

      return v16;
    }

    else
    {
      swift_beginAccess();
      v13 = *(v64 + 16);
      v14 = *(v64 + 24);
      swift_endAccess();
      v15 = sub_268F75264(v13, v14 & 1, a3, a4);

      return v15;
    }
  }

  else
  {
    v90 = v84;
    v78 = sub_268F9B294();
    v6 = sub_268DC7AE8();
    oslog = *v6;
    MEMORY[0x277D82BE0](*v6);
    v71 = swift_allocObject();
    *(v71 + 16) = v84;
    v73 = swift_allocObject();
    *(v73 + 16) = 0;
    v74 = swift_allocObject();
    *(v74 + 16) = 8;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_268DD1060;
    *(v72 + 24) = v71;
    v75 = swift_allocObject();
    *(v75 + 16) = sub_268DD25B0;
    *(v75 + 24) = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    sub_268F9B734();
    v76 = v7;

    *v76 = sub_268CD7600;
    v76[1] = v73;

    v76[2] = sub_268CD7600;
    v76[3] = v74;

    v76[4] = sub_268DD25BC;
    v76[5] = v75;
    sub_268CD0F7C();

    if (os_log_type_enabled(oslog, v78))
    {
      buf = sub_268F9B3A4();
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v69 = sub_268CD5448(0, v67, v67);
      v70 = sub_268CD5448(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v89 = buf;
      v88 = v69;
      v87 = v70;
      sub_268CD549C(0, &v89);
      sub_268CD549C(1, &v89);
      v85 = sub_268CD7600;
      v86 = v73;
      sub_268CD54B0(&v85, &v89, &v88, &v87);
      v85 = sub_268CD7600;
      v86 = v74;
      sub_268CD54B0(&v85, &v89, &v88, &v87);
      v85 = sub_268DD25BC;
      v86 = v75;
      sub_268CD54B0(&v85, &v89, &v88, &v87);
      _os_log_impl(&dword_268CBE000, oslog, v78, "[getRequestedValue] use boundedValue: %f", buf, 0xCu);
      sub_268CD54FC(v69, 0, v67);
      sub_268CD54FC(v70, 0, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();
    }

    else
    {
    }

    MEMORY[0x277D82BD8](oslog);
    return v84;
  }
}

id sub_268F72AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_268CDA484();
  v10 = sub_268CD42AC(3, 0);
  [v10 setOldValue_];
  [v10 setUpdatedValue_];
  MEMORY[0x277D82BE0](a4);
  [v10 setMinValue_];
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BE0](a5);
  [v10 setMaxValue_];
  MEMORY[0x277D82BD8](a5);
  return v10;
}

SiriSettingsIntents::NumericSettingIdentifier_optional sub_268F72BC4(uint64_t a1)
{
  v8 = a1;
  v6 = a1;
  v1 = sub_268D588E0();
  v5._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v1, &protocol witness table for INSetNumericSettingIntent);
  v5._object = v2;
  if (v2)
  {
    rawValue = v5;
  }

  else
  {
    rawValue._countAndFlagsBits = sub_268F9AEF4();
    rawValue._object = v3;
  }

  return NumericSettingIdentifier.init(rawValue:)(rawValue);
}

BOOL sub_268F72C88(void *a1, void *a2)
{
  v24 = 0.0;
  v26 = a1;
  v25 = a2;
  v22 = [a1 numericValue];
  if (v22 && (v20 = [v22 value], *&v2 = MEMORY[0x277D82BD8](v22).n128_u64[0], v20))
  {
    [v20 doubleValue];
    v17 = v3;
    MEMORY[0x277D82BD8](v20);
    v18 = v17;
    v19 = 0;
  }

  else
  {
    v18 = 0.0;
    v19 = 1;
  }

  if (v19)
  {
    goto LABEL_20;
  }

  v24 = v18;
  v4 = [a2 maxValue];
  v23 = v4;
  if (v4)
  {
    v15 = v23;
    MEMORY[0x277D82BE0](v23);
    sub_268D35038(&v23);
    v16 = [v15 value];
    *&v5 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    if (v16)
    {
      [v16 doubleValue];
      v12 = v6;
      MEMORY[0x277D82BD8](v16);
      v13 = v12;
      v14 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    sub_268D35038(&v23);
  }

  v13 = 0.0;
  v14 = 1;
LABEL_15:
  if (v14)
  {
LABEL_20:
    v9 = sub_268F9B294();
    v7 = sub_268DC7AE8();
    v10 = *v7;
    MEMORY[0x277D82BE0](*v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v9, &dword_268CBE000, v10, "Unable to determine the requested value or max value to compare from the intent and intentResponse", 98, 2);

    MEMORY[0x277D82BD8](v10);
    return 0;
  }

  return v13 < v18;
}

BOOL sub_268F72FB8(void *a1, void *a2)
{
  v24 = 0.0;
  v26 = a1;
  v25 = a2;
  v22 = [a1 numericValue];
  if (v22 && (v20 = [v22 value], *&v2 = MEMORY[0x277D82BD8](v22).n128_u64[0], v20))
  {
    [v20 doubleValue];
    v17 = v3;
    MEMORY[0x277D82BD8](v20);
    v18 = v17;
    v19 = 0;
  }

  else
  {
    v18 = 0.0;
    v19 = 1;
  }

  if (v19)
  {
    goto LABEL_20;
  }

  v24 = v18;
  v4 = [a2 minValue];
  v23 = v4;
  if (v4)
  {
    v15 = v23;
    MEMORY[0x277D82BE0](v23);
    sub_268D35038(&v23);
    v16 = [v15 value];
    *&v5 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    if (v16)
    {
      [v16 doubleValue];
      v12 = v6;
      MEMORY[0x277D82BD8](v16);
      v13 = v12;
      v14 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    sub_268D35038(&v23);
  }

  v13 = 0.0;
  v14 = 1;
LABEL_15:
  if (v14)
  {
LABEL_20:
    v9 = sub_268F9B294();
    v7 = sub_268DC7AE8();
    v10 = *v7;
    MEMORY[0x277D82BE0](*v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v9, &dword_268CBE000, v10, "Unable to determine the requested value or min value to compare from the intent and intentResponse", 98, 2);

    MEMORY[0x277D82BD8](v10);
    return 0;
  }

  return v18 < v13;
}

uint64_t sub_268F732E8(void (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v197 = a6;
  v199 = a7;
  v176 = a1;
  v175 = a2;
  v170 = a3;
  v171 = a4;
  v172 = a5;
  v173 = a8;
  v174 = a9;
  v200 = sub_268DD1060;
  v202 = sub_268DD25B0;
  v206 = sub_268DD1060;
  v210 = sub_268DD25B0;
  v212 = sub_268CD7600;
  v214 = sub_268CD7600;
  v216 = sub_268DD25BC;
  v218 = sub_268CD7600;
  v220 = sub_268CD7600;
  v223 = sub_268DD25BC;
  v166 = "Fatal error";
  v167 = "Unexpectedly found nil while unwrapping an Optional value";
  v168 = "Swift/FloatingPointTypes.swift";
  v169 = "[handleNumericSettingIntent] Failed to execute set value callback.";
  v248 = 0.0;
  v247 = 0;
  v245 = 0;
  v246 = 0;
  v243 = 0;
  v244 = 0;
  v242 = 0;
  v241 = 0;
  v240 = 0;
  v235 = 0;
  v177 = sub_268F9B6F4();
  v178 = *(v177 - 8);
  v179 = v177 - 8;
  v180 = v178[8];
  v181 = (v180 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v176, v175, v170, v171);
  v182 = &v94 - v181;
  v183 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v11, v12, v13);
  v184 = &v94 - v183;
  v185 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v16, v17, v18);
  v186 = &v94 - v185;
  v187 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v21, v22, v23);
  v188 = &v94 - v187;
  v189 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v26, v27, v28);
  v190 = &v94 - v189;
  v191 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v31, v32, v33);
  v192 = &v94 - v191;
  v193 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35, v36, v37, v38);
  v194 = &v94 - v193;
  v195 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = MEMORY[0x28223BE20](v40, v41, v42, v43);
  v196 = &v94 - v195;
  v248 = v44;
  v247 = v45;
  v245 = v46;
  v246 = v47;
  v243 = v48;
  v244 = v49;
  v242 = v50;
  v241 = v51;
  v240 = v52;
  v228 = sub_268F9B284();
  v227 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v227);
  v198 = 24;
  v208 = 7;
  v201 = swift_allocObject();
  *(v201 + 16) = v197;
  v209 = swift_allocObject();
  *(v209 + 16) = v199;
  v204 = 17;
  v213 = swift_allocObject();
  *(v213 + 16) = 0;
  v215 = swift_allocObject();
  v205 = 8;
  *(v215 + 16) = 8;
  v207 = 32;
  v53 = swift_allocObject();
  v54 = v201;
  v203 = v53;
  *(v53 + 16) = v200;
  *(v53 + 24) = v54;
  v55 = swift_allocObject();
  v56 = v203;
  v217 = v55;
  *(v55 + 16) = v202;
  *(v55 + 24) = v56;
  v219 = swift_allocObject();
  *(v219 + 16) = 0;
  v221 = swift_allocObject();
  *(v221 + 16) = v205;
  v57 = swift_allocObject();
  v58 = v209;
  v211 = v57;
  *(v57 + 16) = v206;
  *(v57 + 24) = v58;
  v59 = swift_allocObject();
  v60 = v211;
  v224 = v59;
  *(v59 + 16) = v210;
  *(v59 + 24) = v60;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v222 = sub_268F9B734();
  v225 = v61;

  v62 = v213;
  v63 = v225;
  *v225 = v212;
  v63[1] = v62;

  v64 = v215;
  v65 = v225;
  v225[2] = v214;
  v65[3] = v64;

  v66 = v217;
  v67 = v225;
  v225[4] = v216;
  v67[5] = v66;

  v68 = v219;
  v69 = v225;
  v225[6] = v218;
  v69[7] = v68;

  v70 = v221;
  v71 = v225;
  v225[8] = v220;
  v71[9] = v70;

  v72 = v224;
  v73 = v225;
  v225[10] = v223;
  v73[11] = v72;
  sub_268CD0F7C();

  if (os_log_type_enabled(v227, v228))
  {
    v158 = sub_268F9B3A4();
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v157 = 0;
    v159 = sub_268CD5448(0, v156, v156);
    v160 = sub_268CD5448(v157, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v161 = &v233;
    v233 = v158;
    v162 = &v232;
    v232 = v159;
    v163 = &v231;
    v231 = v160;
    sub_268CD549C(0, &v233);
    sub_268CD549C(2, v161);
    v74 = v165;
    v229 = v212;
    v230 = v213;
    sub_268CD54B0(&v229, v161, v162, v163);
    v164 = v74;
    if (v74)
    {

      __break(1u);
    }

    else
    {
      v229 = v214;
      v230 = v215;
      sub_268CD54B0(&v229, &v233, &v232, &v231);
      v154 = 0;
      v229 = v216;
      v230 = v217;
      sub_268CD54B0(&v229, &v233, &v232, &v231);
      v153 = 0;
      v229 = v218;
      v230 = v219;
      sub_268CD54B0(&v229, &v233, &v232, &v231);
      v152 = 0;
      v229 = v220;
      v230 = v221;
      sub_268CD54B0(&v229, &v233, &v232, &v231);
      v151 = 0;
      v229 = v223;
      v230 = v224;
      sub_268CD54B0(&v229, &v233, &v232, &v231);
      v150 = 0;
      _os_log_impl(&dword_268CBE000, v227, v228, "[handleNumericSettingIntent] Requested value: %f, current value: %f", v158, 0x16u);
      v149 = 0;
      sub_268CD54FC(v159, 0, v156);
      sub_268CD54FC(v160, v149, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();

      v155 = v150;
    }
  }

  else
  {

    v155 = v165;
  }

  v148 = v155;
  MEMORY[0x277D82BD8](v227);
  if (v197 == v199)
  {
    v144 = v148;
LABEL_10:
    v131 = v144;

    v132 = 0;
    v133 = sub_268DD26C8();
    v134 = sub_268D34FD4();
    v137 = sub_268E557EC(v199);
    v142 = MEMORY[0x277D84678];
    v77 = *MEMORY[0x277D84678];
    v135 = v178[13];
    v136 = v178 + 13;
    v135(v196, v77, v177);
    v239 = v137;
    v138 = v178[2];
    v139 = v178 + 2;
    v138(v194, v196, v177);
    v140 = v178[11];
    v141 = v178 + 11;
    v143 = v140(v194, v177);
    if (v143 == *v142)
    {
      v239 = round(v137);
      goto LABEL_24;
    }

    if (v143 == *MEMORY[0x277D84670])
    {
      v239 = rint(v137);
      goto LABEL_24;
    }

    if (v143 != *MEMORY[0x277D84680])
    {
      if (v143 == *MEMORY[0x277D84688])
      {
LABEL_23:
        v239 = floor(v137);
LABEL_24:
        v125 = v239;
        v123 = v178[1];
        v124 = v178 + 1;
        v123(v196, v177);
        v78 = sub_268E3E3B0();
        v126 = sub_268E3E3F0(v78, v172);
        v127 = sub_268E557EC(v197);
        v128 = MEMORY[0x277D84678];
        v135(v192, *MEMORY[0x277D84678], v177);
        v238 = v127;
        v138(v190, v192, v177);
        v129 = v140(v190, v177);
        if (v129 != *v128)
        {
          if (v129 == *MEMORY[0x277D84670])
          {
            v238 = rint(v127);
            goto LABEL_41;
          }

          if (v129 != *MEMORY[0x277D84680])
          {
            if (v129 == *MEMORY[0x277D84688])
            {
LABEL_40:
              v238 = floor(v127);
LABEL_41:
              v117 = v238;
              v123(v192, v177);
              v79 = sub_268E3E3B0();
              v118 = sub_268E3E3F0(v79, v172);
              v119 = sub_268E557EC(v173);
              v120 = MEMORY[0x277D84678];
              v135(v188, *MEMORY[0x277D84678], v177);
              v237 = v119;
              v138(v186, v188, v177);
              v121 = v140(v186, v177);
              if (v121 != *v120)
              {
                if (v121 == *MEMORY[0x277D84670])
                {
                  v237 = rint(v119);
                  goto LABEL_58;
                }

                if (v121 != *MEMORY[0x277D84680])
                {
                  if (v121 == *MEMORY[0x277D84688])
                  {
LABEL_57:
                    v237 = floor(v119);
LABEL_58:
                    v111 = v237;
                    v123(v188, v177);
                    v80 = sub_268E3E3B0();
                    v112 = sub_268E3E3F0(v80, v172);
                    v113 = sub_268E557EC(v174);
                    v114 = MEMORY[0x277D84678];
                    v135(v184, *MEMORY[0x277D84678], v177);
                    v236 = v113;
                    v138(v182, v184, v177);
                    v115 = v140(v182, v177);
                    if (v115 != *v114)
                    {
                      if (v115 == *MEMORY[0x277D84670])
                      {
                        v236 = rint(v113);
                        goto LABEL_75;
                      }

                      if (v115 != *MEMORY[0x277D84680])
                      {
                        if (v115 == *MEMORY[0x277D84688])
                        {
                          goto LABEL_74;
                        }

                        if (v115 == *MEMORY[0x277D84660])
                        {
                          v236 = trunc(v113);
                          goto LABEL_75;
                        }

                        if (v115 != *MEMORY[0x277D84668])
                        {
                          sub_268F9B114();
                          v123(v182, v177);
LABEL_75:
                          v106 = v236;
                          v123(v184, v177);
                          v81 = sub_268E3E3B0();
                          v107 = sub_268E3E3F0(v81, v172);
                          v108 = sub_268F72AA8(0, v126, v118, v112, v107);
                          MEMORY[0x277D82BD8](v107);
                          MEMORY[0x277D82BD8](v112);
                          MEMORY[0x277D82BD8](v118);
                          v82 = MEMORY[0x277D82BD8](v126);
                          (v170)(v108, v82);
                          MEMORY[0x277D82BD8](v108);

                          result = v131;
                          v109 = v131;
                          return result;
                        }

                        v110 = *&v113 >> 63;
                        if (v113 < 0.0)
                        {
                          if (v110 != 1)
                          {
                            result = sub_268F9B584();
                            __break(1u);
                            return result;
                          }

LABEL_74:
                          v236 = floor(v113);
                          goto LABEL_75;
                        }
                      }

                      v236 = ceil(v113);
                      goto LABEL_75;
                    }

LABEL_68:
                    v236 = round(v113);
                    goto LABEL_75;
                  }

                  if (v121 == *MEMORY[0x277D84660])
                  {
                    v237 = trunc(v119);
                    goto LABEL_58;
                  }

                  if (v121 != *MEMORY[0x277D84668])
                  {
                    sub_268F9B114();
                    v123(v186, v177);
                    goto LABEL_58;
                  }

                  v116 = *&v119 >> 63;
                  if (v119 < 0.0)
                  {
                    if (v116 != 1)
                    {
                      sub_268F9B584();
                      __break(1u);
                      goto LABEL_68;
                    }

                    goto LABEL_57;
                  }
                }

                v237 = ceil(v119);
                goto LABEL_58;
              }

LABEL_51:
              v237 = round(v119);
              goto LABEL_58;
            }

            if (v129 == *MEMORY[0x277D84660])
            {
              v238 = trunc(v127);
              goto LABEL_41;
            }

            if (v129 != *MEMORY[0x277D84668])
            {
              sub_268F9B114();
              v123(v190, v177);
              goto LABEL_41;
            }

            v122 = *&v127 >> 63;
            if (v127 < 0.0)
            {
              if (v122 != 1)
              {
                sub_268F9B584();
                __break(1u);
                goto LABEL_51;
              }

              goto LABEL_40;
            }
          }

          v238 = ceil(v127);
          goto LABEL_41;
        }

LABEL_34:
        v238 = round(v127);
        goto LABEL_41;
      }

      if (v143 == *MEMORY[0x277D84660])
      {
        v239 = trunc(v137);
        goto LABEL_24;
      }

      if (v143 != *MEMORY[0x277D84668])
      {
        sub_268F9B114();
        (v178[1])(v194, v177);
        goto LABEL_24;
      }

      v130 = *&v137 >> 63;
      if (v137 < 0.0)
      {
        if (v130 != 1)
        {
          sub_268F9B584();
          __break(1u);
          goto LABEL_34;
        }

        goto LABEL_23;
      }
    }

    v239 = ceil(v137);
    goto LABEL_24;
  }

  sub_268D34FD4();
  v75 = sub_268E3E3B0();
  v76 = v148;
  v145 = v75;
  v176();
  v146 = v76;
  v147 = v76;
  if (!v76)
  {
    MEMORY[0x277D82BD8](v145);

    v144 = v146;
    goto LABEL_10;
  }

  v104 = v147;
  v105 = 0;
  MEMORY[0x277D82BD8](v145);

  v84 = v104;
  v235 = v104;
  v100 = sub_268F9B294();
  v102 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v102);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v99 = sub_268F9B734();
  v97 = v85;
  v86 = v104;
  v94 = &v234;
  v234 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v95 = sub_268F9AE64();
  v96 = v87;
  v97[3] = MEMORY[0x277D837D0];
  v88 = sub_268CDD224();
  v89 = v95;
  v90 = v96;
  v91 = v97;
  v97[4] = v88;
  *v91 = v89;
  v91[1] = v90;
  sub_268CD0F7C();
  v101 = v92;
  sub_268F9AC14(v100, &dword_268CBE000, v102, v169, 66, 2);

  MEMORY[0x277D82BD8](v102);

  v93 = sub_268DAB2DC();
  v103 = sub_268F710D8(0, v93);
  v170();
  MEMORY[0x277D82BD8](v103);

  return v105;
}

double sub_268F75178(uint64_t a1, double a2)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  swift_endAccess();
  if (v7)
  {
    return a2;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_268F75264(uint64_t a1, char a2, double a3, double a4)
{
  if (a2)
  {
    return a1;
  }

  sub_268F9B794();
  sub_268F9B784();
  return v6;
}

uint64_t sub_268F75374(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v25 = a6;
  v27 = a1;
  v21 = 0;
  v31 = a6;
  v22 = *(a6 - 8);
  v23 = v22;
  v7 = MEMORY[0x28223BE20](0, a2, a3, a4);
  v24 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v7);
  v28 = sub_268F9B574() >> 3;
  v29 = *v27;
  v30 = v29;
  if (v28 < 0)
  {
    result = sub_268F9B5A4();
    __break(1u);
  }

  else
  {
    v20 = v29 + v28;
    v19 = &v19;
    MEMORY[0x28223BE20](v24, &v19, v10, v25);
    v17 = v30;
    v18 = v11;
    sub_268F755B0(v12, sub_268F75954, &v16, v13, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v14, MEMORY[0x277D84F78]);
    (*(v23 + 8))(v24, v25);
    result = v19;
    *v27 = v20;
  }

  return result;
}

uint64_t sub_268F755B0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *, double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12[2] = a8;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeRawBufferPointer with negative count";
  v21 = "Swift/UnsafeRawBufferPointer.swift";
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v25 = v12 - v24;
  v26 = *(*(v9 - 8) + 64);
  if (v26 < 0)
  {
    result = sub_268F9B5A4();
    __break(1u);
  }

  else
  {
    v10 = v17;
    result = v14(v13, v13 + v26, v25, v8);
    v12[1] = v10;
    if (v10)
    {
      return (*(v22 + 32))(v18, v25, v16);
    }
  }

  return result;
}

void *sub_268F757A0(void *a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  (a4)(a1, a2, a3);
  v5 = *a1;
  sub_268F9B3C4();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t sub_268F7580C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_268F75854(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_268F758C8();
  v5 = MEMORY[0x277D83B88];

  return sub_268F75374(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_268F758C8()
{
  v2 = qword_2802DE7F0;
  if (!qword_2802DE7F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F75984()
{
  type metadata accessor for SetAXColorFiltersGrayscaleHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F17D0 = result;
  return result;
}

uint64_t *sub_268F759EC()
{
  if (qword_2802DB908 != -1)
  {
    swift_once();
  }

  return &qword_2802F17D0;
}

uint64_t sub_268F75A4C()
{
  v1 = *sub_268F759EC();

  return v1;
}

uint64_t sub_268F75A7C(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAXColorFiltersGrayscaleHandler handling intent", 49, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D3EAE4();

  v4 = sub_268DBD2E4();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268F75CA0, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F75CA0, v8);
}

uint64_t sub_268F75C30(char a1)
{

  sub_268D3EB14(a1 & 1);
}

uint64_t sub_268F75CEC()
{
  type metadata accessor for SetAXIncreaseContrastHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F17D8 = result;
  return result;
}

uint64_t *sub_268F75D54()
{
  if (qword_2802DB910 != -1)
  {
    swift_once();
  }

  return &qword_2802F17D8;
}

uint64_t sub_268F75DB4()
{
  v1 = *sub_268F75D54();

  return v1;
}

uint64_t sub_268F75DE4(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAXIncreaseContrastHandler handling intent", 44, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D3E824();

  v4 = sub_268DBD764();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268F76008, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F76008, v8);
}

uint64_t sub_268F75F98(char a1)
{

  sub_268D3E854(a1 & 1);
}

uint64_t sub_268F76054(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "SetLabeledSettingIntent#ConnectToWifi";
  *(v2 + 8) = 37;
  *(v2 + 16) = 2;
  *(v2 + 24) = "SetLabeledSettingIntent#EnvironmentErrors";
  *(v2 + 32) = 41;
  *(v2 + 40) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  if (!v6)
  {
    v5 = 0;
LABEL_6:

    return v5;
  }

  if (v6 == 1)
  {
    v5 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_268F76260()
{
  v2 = qword_2802DE7F8;
  if (!qword_2802DE7F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE7F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F763AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268F76054(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268F763E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268F76188(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268F7641C()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268F76458, 0);
}

uint64_t sub_268F76458()
{
  v4 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

unint64_t sub_268F765F8()
{
  v2 = qword_2802DE800;
  if (!qword_2802DE800)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE800);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F76744()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268F76780, 0);
}

uint64_t sub_268F76780()
{
  v5 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v7 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v0[6] = v8;
  v9 = (v5 + *v5);
  v2 = swift_task_alloc();
  *(v6 + 56) = v2;
  v3 = sub_268F765F8();
  *v2 = *(v6 + 16);
  v2[1] = sub_268D71B74;

  return v9(v10, v7, v8, &unk_2879981A0, v3);
}

uint64_t sub_268F768EC(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v2[7] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;

  return MEMORY[0x2822009F8](sub_268F769D4, 0);
}

uint64_t sub_268F769D4()
{
  v15 = v0[7];
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;
  sub_268D2A1F0(v14, v15);
  v16 = sub_268F9A9C4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    sub_268D28588(v10[7]);
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  else
  {
    v9 = v10[7];
    v13[5] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13 + 2);
    (*(v17 + 32))(boxed_opaque_existential_1, v9, v16);
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[9] = v7;
  v8 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  v10[10] = v5;
  *v5 = v10[2];
  v5[1] = sub_268DF3218;

  return v8(v11, v12, v7);
}

uint64_t sub_268F76C80(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "Status";
  *(v2 + 8) = 6;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dialog1";
  *(v2 + 32) = 7;
  *(v2 + 40) = 2;
  *(v2 + 48) = "dialog2";
  *(v2 + 56) = 7;
  *(v2 + 64) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_8:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_8;
    case 2:
      v5 = 2;
      goto LABEL_8;
  }

  return 3;
}

unint64_t sub_268F76F14()
{
  v2 = qword_2802DE808;
  if (!qword_2802DE808)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE808);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F77060@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268F76C80(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268F77098@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268F76DFC(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268F770CC(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v2[7] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;

  return MEMORY[0x2822009F8](sub_268F771B4, 0);
}

uint64_t sub_268F771B4()
{
  v16 = v0[7];
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;
  sub_268D2A1F0(v15, v16);
  v17 = sub_268F9A9C4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1) == 1)
  {
    sub_268D28588(v11[7]);
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  else
  {
    v10 = v11[7];
    v14[5] = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14 + 2);
    (*(v18 + 32))(boxed_opaque_existential_1, v10, v17);
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[9] = v8;
  v9 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  v11[10] = v5;
  v6 = sub_268F76F14();
  *v5 = v11[2];
  v5[1] = sub_268DF3218;

  return v9(v12, v13, v8, &unk_287998230, v6);
}

uint64_t type metadata accessor for SetLabeledSettingIntentCATsSimple(uint64_t a1)
{
  v2 = qword_2802DE810;
  if (!qword_2802DE810)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F774EC(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268F775B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v19 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v23 = sub_268F9AB24();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v15 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v4, v5, v6);
  v17 = &v14 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v7, v19, v8);
  v18 = &v14 - v16;
  v28 = v9;
  v27 = v10;
  v26 = v11;
  v29 = v3;
  sub_268CDC358(v9, &v14 - v16);
  (*(v20 + 16))(v17, v22, v23);
  MEMORY[0x277D82BE0](v19);
  v25 = sub_268F9A9D4();

  v29 = v25;
  v12 = MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v23, v12);
  sub_268CDC480(v24);

  return v25;
}

uint64_t sub_268F777F4(int a1, uint64_t a2)
{
  v10 = a1;
  v11 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v14 = sub_268F9AB24();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v8 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v14, v11, v14, v3);
  v9 = &v7 - v8;
  v17 = v10 & 1;
  v16 = v5;
  v18 = v2;
  (*(v12 + 16))(v4);
  v15 = sub_268F9A9E4();

  v18 = v15;
  (*(v12 + 8))(v11, v14);

  return v15;
}

unint64_t sub_268F779A4()
{
  v2 = qword_2802DE820;
  if (!qword_2802DE820)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F77A38()
{
  v2 = qword_2802DE828;
  if (!qword_2802DE828)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F77ACC()
{
  v2 = qword_2802DE830;
  if (!qword_2802DE830)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE830);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F77B48()
{
  type metadata accessor for SetAssistiveTouchHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F17F0 = result;
  return result;
}

uint64_t *sub_268F77BB0()
{
  if (qword_2802DB918 != -1)
  {
    swift_once();
  }

  return &qword_2802F17F0;
}

uint64_t sub_268F77C10()
{
  v1 = *sub_268F77BB0();

  return v1;
}

uint64_t sub_268F77C40(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAssistiveTouchHandler handling intent", 40, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D374BC();

  v4 = sub_268DBCE04();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268F77E64, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F77E64, v8);
}

uint64_t sub_268F77DF4(char a1)
{

  sub_268D374EC(a1 & 1);
}

uint64_t sub_268F77F04(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v26 = a1;
  v20 = a2;
  v25 = a3;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v12[1] = 0;
  v27 = sub_268F9A9C4();
  v23 = *(v27 - 8);
  v24 = v27 - 8;
  v14 = v23[8];
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v20, v25, v3);
  v18 = v12 - v13;
  v15 = v13;
  MEMORY[0x28223BE20](v4, v5, v6, v12 - v13);
  v19 = v12 - v15;
  v34 = v7;
  v33 = v8 & 1;
  v32 = v9;
  type metadata accessor for SettingsBinarySetting.Builder(v10);
  v17 = v23[2];
  v16 = v23 + 2;
  v17(v19, v26, v27);
  v17(v18, v25, v27);
  v21 = sub_268F77EB0(v19, v18);
  v22 = sub_268F786D4(v20 & 1);

  v31 = v22;

  v30 = sub_268F787B4(v22);

  v35 = v30;

  v29 = v23[1];
  v28 = v23 + 1;
  v29(v25, v27);
  v29(v26, v27);

  return v30;
}

double sub_268F78138@<D0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_name;
  swift_beginAccess();
  v2 = sub_268F9A9C4();
  (*(*(v2 - 8) + 16))(a1, v4);
  swift_endAccess();
  return result;
}

uint64_t sub_268F781C4(uint64_t a1)
{
  v12 = a1;
  v13 = sub_268F9A9C4();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v13, v12, v13, v2);
  v8 = &v5 - v6;
  (*(v10 + 16))(v3);
  v7 = v1 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_name;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_268F78368()
{
  v2 = (v0 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_value);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

double sub_268F783C8(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_value);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  return result;
}

uint64_t sub_268F78488(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v13 = a2;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v17 = sub_268F9A9C4();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v17, v16, v17, v3);
  v5 = v14;
  v12 = &v8 - v8;
  v22 = v6;
  v21 = v13;
  v23 = v2;
  *(v2 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_value) = 0;
  v9 = v23;
  v11 = *(v5 + 16);
  v10 = v5 + 16;
  v11(v4);
  (*(v14 + 32))(v9 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_name, v12, v17);
  (v11)(v12, v13, v17);
  v20 = sub_268F5038C(v12);

  v23 = v20;
  v19 = *(v14 + 8);
  v18 = v14 + 8;
  v19(v13, v17);
  v19(v16, v17);

  return v20;
}

uint64_t type metadata accessor for SettingsBinarySetting.Builder(uint64_t a1)
{
  v2 = qword_2802DE868;
  if (!qword_2802DE868)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F786D4(char a1)
{

  v3 = (v1 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_value);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();

  return v5;
}

uint64_t sub_268F78768()
{
  type metadata accessor for SettingsBinarySetting(0);

  return sub_268F787B4(v1);
}

uint64_t type metadata accessor for SettingsBinarySetting(uint64_t a1)
{
  v2 = qword_2802DE858;
  if (!qword_2802DE858)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F78934()
{
  v3 = OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_name;
  v1 = sub_268F9A9C4();
  return (*(*(v1 - 8) + 8))(v0 + v3);
}

uint64_t sub_268F789A0()
{
  v3 = sub_268F504C0();
  v2 = OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_name;
  v0 = sub_268F9A9C4();
  (*(*(v0 - 8) + 8))(v3 + v2);
  return v3;
}

uint64_t SettingsBinarySetting.name.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name;
  v2 = sub_268F9A9C4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268F78B60(uint64_t a1)
{
  v21 = a1;
  v26 = 0;
  v25 = 0;
  v14 = sub_268F9A9C4();
  v10 = *(v14 - 8);
  v11 = v14 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v2, v3, v4);
  v13 = &v7 - v7;
  v25 = v5;
  v26 = v1;
  v12 = v1;
  v8 = v5 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_name;
  v9 = &v24;
  v15 = 32;
  v16 = 0;
  swift_beginAccess();
  (*(v10 + 16))(v13, v8, v14);
  swift_endAccess();
  (*(v10 + 32))(v12 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name, v13, v14);
  v19 = v26;
  v17 = (v21 + OBJC_IVAR____TtCC19SiriSettingsIntents21SettingsBinarySetting7Builder_value);
  v18 = &v23;
  swift_beginAccess();
  v20 = *v17;
  swift_endAccess();
  *(v19 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_value) = v20;

  v22 = sub_268F50764(v21);

  v26 = v22;

  return v22;
}

void sub_268F78D48(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v16[2] = 0;
  v16[3] = a1;
  v16[4] = a2;

  v16[0] = sub_268F9AEF4();
  v16[1] = v3;
  v15[2] = a1;
  v15[3] = a2;
  v14 = MEMORY[0x26D62DB50](v16[0], v3, a1, a2);
  sub_268CD9D30(v16);
  if (v14)
  {

    v8 = v11 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name;
    v9 = sub_268F9A9C4();
    a3[3] = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v8);
  }

  else
  {

    v15[0] = sub_268F9AEF4();
    v15[1] = v5;
    v7 = MEMORY[0x26D62DB50](v15[0], v5, a1, a2);
    sub_268CD9D30(v15);

    if (v7)
    {
      v6 = *(v11 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_value);
      a3[3] = MEMORY[0x277D839B0];
      *a3 = v6;
    }

    else
    {

      sub_268F508B4(a1, a2, a3);
    }
  }
}

unint64_t sub_268F78FB0()
{
  v2 = qword_2802DE838;
  if (!qword_2802DE838)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE838);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F7912C()
{
  v2 = qword_2802DE840;
  if (!qword_2802DE840)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE840);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F791D8(void *a1)
{
  swift_allocObject();
  v5 = sub_268F79264(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_268F79264(void *a1)
{
  v42 = a1;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v37 = sub_268F9A9C4();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37, v2, v3, v4);
  v41 = v17 - v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE848, &qword_268FADCC0);
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42, v5, v6, v7);
  v47 = v17 - v46;
  v58 = v17 - v46;
  v56 = v8;
  v57 = v1;
  v49 = v8[3];
  v50 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v49);
  sub_268F7912C();
  v9 = v48;
  sub_268F9B834();
  v51 = v9;
  v52 = v9;
  if (v9)
  {
    v22 = v52;
    v23 = 0;
  }

  else
  {
    v33 = v57;
    v34 = &v55;
    v55 = 0;
    sub_268DD91D4();
    v10 = v51;
    sub_268F9B654();
    v35 = v10;
    v36 = v10;
    if (v10)
    {
      v21 = v36;
      (*(v44 + 8))(v47, v43);
      v22 = v21;
      v23 = 0;
    }

    else
    {
      (*(v38 + 32))(v33 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name, v41, v37);
      v11 = v35;
      v29 = v57;
      v54 = 1;
      v12 = sub_268F9B624();
      v30 = v11;
      v31 = v12;
      v32 = v11;
      if (v11)
      {
        v20 = v32;
        (*(v44 + 8))(v47, v43);
        v22 = v20;
        v23 = 1;
      }

      else
      {
        v13 = v42;
        *(v29 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_value) = v31 & 1;
        v25 = v53;
        sub_268CDE730(v13, v53);
        v14 = v30;
        v15 = SettingsSetting.init(from:)(v25);
        v26 = v14;
        v27 = v15;
        v28 = v14;
        if (!v14)
        {
          v24 = v27;

          v57 = v24;
          (*(v44 + 8))(v47, v43);
          __swift_destroy_boxed_opaque_existential_0(v42);

          return v24;
        }

        v19 = v28;
        (*(v44 + 8))(v47, v43);
        v22 = v19;
        v23 = 7;
      }
    }
  }

  v18 = v23;
  v17[3] = v22;
  __swift_destroy_boxed_opaque_existential_0(v42);
  if ((v18 & 4) == 0)
  {
    if (v18)
    {
      (*(v38 + 8))(v57 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name, v37);
    }

    v17[2] = v57;
    type metadata accessor for SettingsBinarySetting(0);
    swift_deallocPartialClassInstance();
  }

  return v17[1];
}

uint64_t sub_268F797E8(void *a1)
{
  v36 = a1;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v25 = sub_268F9A9C4();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v2, v3, v4);
  v29 = v14 - v28;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE850, qword_268FADCC8);
  v6 = v30;
  v31 = v5;
  v32 = *(v5 - 8);
  v33 = v5 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v7, v8, v9);
  v35 = v14 - v34;
  v43 = v14 - v34;
  v42 = v10;
  v41 = v1;

  sub_268F50E0C(v36);
  v37 = v6;
  v38 = v6;
  if (v6)
  {
    v15 = v38;

    v16 = v15;
  }

  else
  {

    v19 = v36[3];
    v20 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v19);
    sub_268F7912C();
    sub_268F9B844();
    (*(v26 + 16))(v29, v24 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name, v25);
    v21 = &v40;
    v40 = 0;
    sub_268DD95FC();
    v11 = v37;
    sub_268F9B6E4();
    v22 = v11;
    v23 = v11;
    if (v11)
    {
      v14[1] = v23;
      (*(v26 + 8))(v29, v25);
      return (*(v32 + 8))(v35, v31);
    }

    else
    {
      (*(v26 + 8))(v29, v25);
      v12 = v22;
      v39 = 1;
      sub_268F9B6B4();
      v17 = v12;
      v18 = v12;
      if (v12)
      {
        v14[0] = v18;
      }

      return (*(v32 + 8))(v35, v31);
    }
  }

  return result;
}

uint64_t sub_268F79C4C()
{
  v3 = OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name;
  v1 = sub_268F9A9C4();
  return (*(*(v1 - 8) + 8))(v0 + v3);
}

uint64_t SettingsBinarySetting.deinit()
{
  v3 = SettingsSetting.deinit();
  v2 = OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_name;
  v0 = sub_268F9A9C4();
  (*(*(v0 - 8) + 8))(v3 + v2);
  return v3;
}

uint64_t sub_268F79DB8(uint64_t a1)
{
  updated = sub_268F9A9C4();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_268F79EE0(uint64_t a1)
{
  updated = sub_268F9A9C4();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_268F79FEC()
{
  v2 = qword_2802DE878;
  if (!qword_2802DE878)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F7A080()
{
  v2 = qword_2802DE880;
  if (!qword_2802DE880)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F7A114()
{
  v2 = qword_2802DE888;
  if (!qword_2802DE888)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE888);
    return WitnessTable;
  }

  return v2;
}

uint64_t static SirikitLocalizedAppName.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v97 = a2;
  v3 = v2;
  v4 = v70;
  v83 = v3;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v71 = sub_268F9A9C4();
  v72 = *(v71 - 8);
  v73 = v71 - 8;
  v74 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71, v5, v6, v7);
  v75 = &v41[-v74];
  v76 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v41[-v74], v9, v10, v11);
  v77 = &v41[-v76];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCD20, qword_268FADE90);
  v79 = (*(*(v78 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78, v12, v13, v14);
  v80 = &v41[-v79];
  v81 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, v17, v18, v19);
  v82 = &v41[-v81];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v93 = *(*(v20 - 8) + 64);
  v84 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v97, v21, v22);
  v85 = &v41[-v84];
  v86 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v41[-v84], v23, v24, v25);
  v87 = &v41[-v86];
  v88 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v41[-v86], v26, v27, v28);
  v89 = &v41[-v88];
  v90 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v41[-v88], v29, v30, v31);
  v91 = &v41[-v90];
  v92 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v41[-v90], v32, v33, v34);
  v94 = &v41[-v92];
  v95 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v41[-v92], v35, v36, v37);
  v96 = &v41[-v95];
  v107 = v4;
  v106 = v38;
  v105 = v39;
  v98 = sub_268F9AA64();
  MEMORY[0x277D82BE0](v98);
  v99 = sub_268F9AA64();
  MEMORY[0x277D82BE0](v99);
  v103 = v98;
  v104 = v99;
  if (v98)
  {
    sub_268F52588(&v103, &v102);
    if (v104)
    {
      v101 = v102;
      v67 = &v103;
      v100 = v104;
      sub_268F9A8C4();
      v68 = sub_268F9B324();
      MEMORY[0x277D82BD8](v100);
      MEMORY[0x277D82BD8](v101);
      sub_268D35038(v67);
      v69 = v68;
      goto LABEL_7;
    }

    MEMORY[0x277D82BD8](v102);
    goto LABEL_9;
  }

  if (v104)
  {
LABEL_9:
    sub_268F7AD2C(&v103);
    v69 = 0;
    goto LABEL_7;
  }

  sub_268D35038(&v103);
  v69 = 1;
LABEL_7:
  v66 = v69;
  MEMORY[0x277D82BD8](v99);
  MEMORY[0x277D82BD8](v98);

  if ((v66 & 1) == 0)
  {
    v56 = 0;
    goto LABEL_20;
  }

  sub_268F9AA74();
  sub_268F9AA74();
  v63 = &v82[*(v78 + 48)];
  sub_268D2A1F0(v96, v82);
  sub_268D2A1F0(v94, v63);
  v64 = *(v72 + 48);
  v65 = v72 + 48;
  if (v64(v82, 1, v71) == 1)
  {
    if (v64(v63, 1, v71) != 1)
    {
      goto LABEL_18;
    }

    sub_268D28588(v82);
    v62 = 1;
  }

  else
  {
    sub_268D2A1F0(v82, v91);
    if (v64(v63, 1, v71) == 1)
    {
      (*(v72 + 8))(v91, v71);
LABEL_18:
      sub_268DE349C(v82);
      v62 = 0;
      goto LABEL_17;
    }

    v58 = *(v72 + 32);
    v57 = v72 + 32;
    v58(v77, v91, v71);
    v58(v75, v63, v71);
    sub_268DE3648();
    v61 = sub_268F9AE04();
    v60 = *(v72 + 8);
    v59 = v72 + 8;
    v60(v75, v71);
    v60(v77, v71);
    sub_268D28588(v82);
    v62 = v61;
  }

LABEL_17:
  v55 = v62;
  sub_268D28588(v94);
  sub_268D28588(v96);
  v56 = v55;
LABEL_20:
  v54 = v56;

  if ((v54 & 1) == 0)
  {
    v44 = 0;
    goto LABEL_31;
  }

  sub_268F9AA54();
  sub_268F9AA54();
  v51 = &v80[*(v78 + 48)];
  sub_268D2A1F0(v89, v80);
  sub_268D2A1F0(v87, v51);
  v52 = *(v72 + 48);
  v53 = v72 + 48;
  if (v52(v80, 1, v71) == 1)
  {
    if (v52(v51, 1, v71) != 1)
    {
      goto LABEL_28;
    }

    sub_268D28588(v80);
    v50 = 1;
  }

  else
  {
    sub_268D2A1F0(v80, v85);
    if (v52(v51, 1, v71) == 1)
    {
      (*(v72 + 8))(v85, v71);
LABEL_28:
      sub_268DE349C(v80);
      v50 = 0;
      goto LABEL_27;
    }

    v46 = *(v72 + 32);
    v45 = v72 + 32;
    v46(v77, v85, v71);
    v46(v75, v51, v71);
    sub_268DE3648();
    v49 = sub_268F9AE04();
    v48 = *(v72 + 8);
    v47 = v72 + 8;
    v48(v75, v71);
    v48(v77, v71);
    sub_268D28588(v80);
    v50 = v49;
  }

LABEL_27:
  v43 = v50;
  sub_268D28588(v87);
  sub_268D28588(v89);
  v44 = v43;
LABEL_31:
  v42 = v44;

  return v42 & 1;
}

void *sub_268F7AD2C(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  return a1;
}

uint64_t *sub_268F7AD98()
{
  if (qword_2802DB920 != -1)
  {
    swift_once();
  }

  return &qword_2802F1818;
}

uint64_t sub_268F7ADF8()
{
  type metadata accessor for SetHandlerProvider();
  result = sub_268F7AE54();
  qword_2802F1818 = result;
  return result;
}

uint64_t sub_268F7AE90()
{
  v1 = *sub_268F7AD98();

  return v1;
}

uint64_t sub_268F7AEC0()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

double sub_268F7AF10(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();

  return result;
}

uint64_t sub_268F7AF70()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

double sub_268F7AFC0(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_endAccess();

  return result;
}

uint64_t sub_268F7B020()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

double sub_268F7B070(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 32) = a1;

  swift_endAccess();

  return result;
}

uint64_t sub_268F7B12C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE890, &unk_268FADEE0);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD768, &unk_268FA56A0);
  sub_268E571E0();
  v0[3] = sub_268F9ADA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE898, &unk_268FADEF0);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDBB8, &qword_268FA6EA8);
  sub_268E516AC();
  v0[4] = sub_268F9ADA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE8A0, &unk_268FADF00);
  sub_268F9B734();
  v67 = v1;
  *v1 = 0;
  v5 = *sub_268E61BB4();

  *(v67 + 4) = type metadata accessor for SetAirplaneModeHandler();
  *(v67 + 5) = &off_2879930C0;
  *(v67 + 1) = v5;
  v67[48] = 1;
  v6 = *sub_268E4EA60();

  v8 = type metadata accessor for SetAppearanceHandler();
  *(v67 + 10) = v8;
  *(v67 + 11) = &off_287992750;
  *(v67 + 7) = v6;
  v67[96] = 2;
  v7 = *sub_268E4EA60();

  *(v67 + 16) = v8;
  *(v67 + 17) = &off_287992750;
  *(v67 + 13) = v7;
  v67[144] = 3;
  v9 = *sub_268E4EA60();

  *(v67 + 22) = v8;
  *(v67 + 23) = &off_287992750;
  *(v67 + 19) = v9;
  v67[192] = 4;
  v10 = *sub_268F77BB0();

  *(v67 + 28) = type metadata accessor for SetAssistiveTouchHandler();
  *(v67 + 29) = &off_287998240;
  *(v67 + 25) = v10;
  v67[240] = 7;
  v11 = *sub_268F86F14();

  *(v67 + 34) = type metadata accessor for SetAutoAnswerHandler();
  *(v67 + 35) = &off_287998538;
  *(v67 + 31) = v11;
  v67[288] = 8;
  v12 = *sub_268F52C04();

  *(v67 + 40) = type metadata accessor for SetAXAutoBrightnessHandler();
  *(v67 + 41) = &off_287997038;
  *(v67 + 37) = v12;
  v67[336] = 9;
  v13 = *sub_268F212D4();

  *(v67 + 46) = type metadata accessor for SetAutoCorrectHandler();
  *(v67 + 47) = &off_287995C78;
  *(v67 + 43) = v13;
  v67[384] = 10;
  v14 = *sub_268E5E614();

  *(v67 + 52) = type metadata accessor for SetBassHandler();
  *(v67 + 53) = &off_287993070;
  *(v67 + 49) = v14;
  v67[432] = 11;
  v15 = *sub_268F80F24();

  *(v67 + 58) = type metadata accessor for SetBassReduceHandler();
  *(v67 + 59) = &off_287998368;
  *(v67 + 55) = v15;
  v67[480] = 12;
  v16 = *sub_268E8D8F8();

  *(v67 + 64) = type metadata accessor for SetBluetoothHandler();
  *(v67 + 65) = &off_287993D40;
  *(v67 + 61) = v16;
  v67[528] = 13;
  v17 = *sub_268F332A0();

  *(v67 + 70) = type metadata accessor for SetAXColorFiltersBlueYellowHandler();
  *(v67 + 71) = &off_287995DA0;
  *(v67 + 67) = v17;
  v67[576] = 14;
  v18 = *sub_268DDA28C();

  *(v67 + 76) = type metadata accessor for SetAXBoldTextHandler();
  *(v67 + 77) = &off_28798F890;
  *(v67 + 73) = v18;
  v67[624] = 15;
  v19 = *sub_268F58D50();

  *(v67 + 82) = type metadata accessor for SetAXButtonShapesHandler();
  *(v67 + 83) = &off_287997140;
  *(v67 + 79) = v19;
  v67[672] = 16;
  v20 = *sub_268F7C710();

  *(v67 + 88) = type metadata accessor for SetCellularDataHandler();
  *(v67 + 89) = &off_2879982F8;
  *(v67 + 85) = v20;
  v67[720] = 17;
  v21 = *sub_268E94180();

  *(v67 + 94) = type metadata accessor for SetAXClassicInvertColorsHandler();
  *(v67 + 95) = &off_287993E98;
  *(v67 + 91) = v21;
  v67[768] = 18;
  v22 = *sub_268E54ED0();

  *(v67 + 100) = type metadata accessor for SetAXColorFiltersColorTintHandler();
  *(v67 + 101) = &off_287992E08;
  *(v67 + 97) = v22;
  v67[816] = 19;
  v23 = *sub_268D8D818();

  *(v67 + 106) = type metadata accessor for SetConversationAwarenessHandler();
  *(v67 + 107) = &off_28798CFA8;
  *(v67 + 103) = v23;
  v67[864] = 20;
  v24 = *sub_268E55238();

  *(v67 + 112) = type metadata accessor for SetDictationHandler();
  *(v67 + 113) = &off_287992E30;
  *(v67 + 109) = v24;
  v67[912] = 21;
  v25 = *sub_268E84638();

  *(v67 + 118) = type metadata accessor for SetAXDifferentiateWithoutColorHandler();
  *(v67 + 119) = &off_287993B40;
  *(v67 + 115) = v25;
  v67[960] = 23;
  v26 = *sub_268F84018();

  *(v67 + 124) = type metadata accessor for SetFlashlightHandler();
  *(v67 + 125) = &off_287998470;
  *(v67 + 121) = v26;
  v67[1008] = 24;
  v27 = *sub_268F759EC();

  *(v67 + 130) = type metadata accessor for SetAXColorFiltersGrayscaleHandler();
  *(v67 + 131) = &off_287998040;
  *(v67 + 127) = v27;
  v67[1056] = 25;
  v28 = *sub_268F3E56C();

  *(v67 + 136) = type metadata accessor for SetAXColorFiltersGreenRedHandler();
  *(v67 + 137) = &off_287996600;
  *(v67 + 133) = v28;
  v67[1104] = 26;
  v29 = *sub_268E037D4();

  *(v67 + 142) = type metadata accessor for SetHeySiriHandler();
  *(v67 + 143) = &off_287990DE0;
  *(v67 + 139) = v29;
  v67[1152] = 27;
  v30 = *sub_268F75D54();

  *(v67 + 148) = type metadata accessor for SetAXIncreaseContrastHandler();
  *(v67 + 149) = &off_287998068;
  *(v67 + 145) = v30;
  v67[1200] = 28;
  v31 = *sub_268E76DD0();

  *(v67 + 154) = type metadata accessor for SetAXInvertColorsHandler();
  *(v67 + 155) = &off_287993868;
  *(v67 + 151) = v31;
  v67[1248] = 29;
  v32 = *sub_268F232E8();

  *(v67 + 160) = type metadata accessor for SetLocationServicesHandler();
  *(v67 + 161) = &off_287995CF0;
  *(v67 + 157) = v32;
  v67[1296] = 31;
  v33 = *sub_268F48728();

  *(v67 + 166) = type metadata accessor for SetNightShiftHandler();
  *(v67 + 167) = &off_287996AB0;
  *(v67 + 163) = v33;
  v67[1344] = 34;
  v34 = *sub_268E77570();

  *(v67 + 172) = type metadata accessor for SetAXOnOffLabelsHandler();
  *(v67 + 173) = &off_287993890;
  *(v67 + 169) = v34;
  v67[1392] = 35;
  v35 = *sub_268D5BBFC();

  v36 = type metadata accessor for SetPersonalHotspotHandler();
  *(v67 + 178) = v36;
  *(v67 + 179) = &off_28798CC88;
  *(v67 + 175) = v35;
  v67[1440] = 36;
  v37 = *sub_268D5BBFC();

  *(v67 + 184) = v36;
  *(v67 + 185) = &off_28798CC88;
  *(v67 + 181) = v37;
  v67[1488] = 37;
  v38 = *sub_268F236A8();

  *(v67 + 190) = type metadata accessor for SetPersonalizedVolumeHandler();
  *(v67 + 191) = &off_287995D40;
  *(v67 + 187) = v38;
  v67[1536] = 38;
  v39 = *sub_268CDDAB8();

  *(v67 + 196) = type metadata accessor for SetLowPowerModeHandler();
  *(v67 + 197) = &off_28798C0F8;
  *(v67 + 193) = v39;
  v67[1584] = 39;
  v40 = *sub_268CDE334();

  *(v67 + 202) = type metadata accessor for SetAXColorFiltersRedGreenHandler();
  *(v67 + 203) = &off_28798C120;
  *(v67 + 199) = v40;
  v67[1632] = 40;
  v41 = *sub_268D8DDC4();

  *(v67 + 208) = type metadata accessor for SetAXReduceTransparencyHandler();
  *(v67 + 209) = &off_28798CFE8;
  *(v67 + 205) = v41;
  v67[1680] = 41;
  v42 = *sub_268F6BEC8();

  *(v67 + 214) = type metadata accessor for SetAXReduceWhitePointHandler();
  *(v67 + 215) = &off_287997878;
  *(v67 + 211) = v42;
  v67[1728] = 42;
  v43 = *sub_268E54C60();

  *(v67 + 220) = type metadata accessor for SetSiriHandler();
  *(v67 + 221) = &off_287992DE0;
  *(v67 + 217) = v43;
  v67[1776] = 43;
  v44 = *sub_268DDB8F4();

  *(v67 + 226) = type metadata accessor for SetSmartSiriVolumeHandler();
  *(v67 + 227) = &off_28798F8D8;
  *(v67 + 223) = v44;
  v67[1824] = 45;
  v45 = *sub_268DFC80C();

  *(v67 + 232) = type metadata accessor for SetAnnounceNotificationsHandler();
  *(v67 + 233) = &off_287990B10;
  *(v67 + 229) = v45;
  v67[1872] = 47;
  v46 = *sub_268F6C668();

  *(v67 + 238) = type metadata accessor for SetAXSwitchControlHandler();
  *(v67 + 239) = &off_2879978A0;
  *(v67 + 235) = v46;
  v67[1920] = 48;
  v47 = *sub_268E55980();

  *(v67 + 244) = type metadata accessor for SetAXVoiceControlHandler();
  *(v67 + 245) = &off_287992EA8;
  *(v67 + 241) = v47;
  v67[1968] = 49;
  v48 = *sub_268F705AC();

  *(v67 + 250) = type metadata accessor for SetVoiceOverHandler();
  *(v67 + 251) = &off_2879978C8;
  *(v67 + 247) = v48;
  v67[2016] = 50;
  v49 = *sub_268EC73A8();

  *(v67 + 256) = type metadata accessor for SetVpnHandler();
  *(v67 + 257) = &off_287995620;
  *(v67 + 253) = v49;
  v67[2064] = 51;
  v50 = *sub_268DAE4C8();

  *(v67 + 262) = type metadata accessor for SetWifiHandler();
  *(v67 + 263) = &off_28798E178;
  *(v67 + 259) = v50;
  v67[2112] = 52;
  v51 = *sub_268DD9CBC();

  *(v67 + 268) = type metadata accessor for SetZoomHandler();
  *(v67 + 269) = &off_28798F838;
  *(v67 + 265) = v51;
  v67[2160] = 53;
  v52 = *sub_268F44214();

  *(v67 + 274) = type metadata accessor for SetShakeMouseHandler();
  *(v67 + 275) = &off_2879966F0;
  *(v67 + 271) = v52;
  v67[2208] = 61;
  v53 = *sub_268F1C978();

  v60 = type metadata accessor for SetFocusModeHandler();
  *(v67 + 280) = v60;
  *(v67 + 281) = &off_287995B70;
  *(v67 + 277) = v53;
  v67[2256] = 63;
  v54 = *sub_268F1C978();

  *(v67 + 286) = v60;
  *(v67 + 287) = &off_287995B70;
  *(v67 + 283) = v54;
  v67[2304] = 60;
  v55 = *sub_268F1C978();

  *(v67 + 292) = v60;
  *(v67 + 293) = &off_287995B70;
  *(v67 + 289) = v55;
  v67[2352] = 59;
  v56 = *sub_268F1C978();

  *(v67 + 298) = v60;
  *(v67 + 299) = &off_287995B70;
  *(v67 + 295) = v56;
  v67[2400] = 57;
  v57 = *sub_268F1C978();

  *(v67 + 304) = v60;
  *(v67 + 305) = &off_287995B70;
  *(v67 + 301) = v57;
  v67[2448] = 62;
  v58 = *sub_268F1C978();

  *(v67 + 310) = v60;
  *(v67 + 311) = &off_287995B70;
  *(v67 + 307) = v58;
  v67[2496] = 58;
  v59 = *sub_268F1C978();

  *(v67 + 316) = v60;
  *(v67 + 317) = &off_287995B70;
  *(v67 + 313) = v59;
  v67[2544] = 22;
  v61 = *sub_268F1C978();

  *(v67 + 322) = v60;
  *(v67 + 323) = &off_287995B70;
  *(v67 + 319) = v61;
  v67[2592] = 5;
  v62 = *sub_268F88DB8();

  v64 = type metadata accessor for SetNoiseManagementHandler();
  *(v67 + 328) = v64;
  *(v67 + 329) = &off_287998658;
  *(v67 + 325) = v62;
  v67[2640] = 6;
  v63 = *sub_268F88DB8();

  *(v67 + 334) = v64;
  *(v67 + 335) = &off_287998658;
  *(v67 + 331) = v63;
  v67[2688] = 32;
  v65 = *sub_268F88DB8();

  *(v67 + 340) = v64;
  *(v67 + 341) = &off_287998658;
  *(v67 + 337) = v65;
  v67[2736] = 46;
  v66 = *sub_268DAEF34();

  *(v67 + 346) = type metadata accessor for SetStandByHandler();
  *(v67 + 347) = &off_28798E1A0;
  *(v67 + 343) = v66;
  v67[2784] = 64;
  v68 = *sub_268EC7164();

  *(v67 + 352) = type metadata accessor for SetReduceLoudSoundsHandler();
  *(v67 + 353) = &off_2879955F8;
  *(v67 + 349) = v68;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCAA8, &unk_268FAA330);
  sub_268E12E98();
  v0[2] = sub_268F9ADA4();
  sub_268E5AE94();

  type metadata accessor for SetSoundAnalysisHandler();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE8A8, &qword_268FADF10);
  sub_268F9ADD4();
  swift_endAccess();
  sub_268E554A8();

  type metadata accessor for SetBackgroundSoundsHandler();
  swift_beginAccess();
  sub_268F9ADD4();
  swift_endAccess();
  sub_268F4FEC8();

  type metadata accessor for SetAXMotionCuesHandler();
  swift_beginAccess();
  sub_268F9ADD4();
  swift_endAccess();
  sub_268F9B734();
  v75 = v2;
  *v2 = 1;
  v69 = *sub_268E8D118();

  v70 = type metadata accessor for SetDisplayBrightnessHandler();
  *(v75 + 4) = v70;
  *(v75 + 5) = &off_287993CD8;
  *(v75 + 1) = v69;
  v75[48] = 2;
  v71 = *sub_268E8D118();

  *(v75 + 10) = v70;
  *(v75 + 11) = &off_287993CD8;
  *(v75 + 7) = v71;
  v75[96] = 7;
  v72 = *sub_268DCA278();

  v74 = type metadata accessor for SetSiriVolumeHandler();
  *(v75 + 16) = v74;
  *(v75 + 17) = &off_28798F238;
  *(v75 + 13) = v72;
  v75[144] = 8;
  v73 = *sub_268DCA278();

  *(v75 + 22) = v74;
  *(v75 + 23) = &off_28798F238;
  *(v75 + 19) = v73;
  v75[192] = 9;
  v76 = *sub_268DCA278();

  *(v75 + 28) = v74;
  *(v75 + 29) = &off_28798F238;
  *(v75 + 25) = v76;
  sub_268CD0F7C();
  v77 = sub_268F9ADA4();
  swift_beginAccess();
  *(v81 + 24) = v77;

  swift_endAccess();
  sub_268F9B734();
  v78 = v3;
  *v3 = 1;
  v79 = *sub_268DE3754();

  v78[4] = type metadata accessor for SetWifiNetworkHandler();
  v78[5] = &off_28798FA40;
  v78[1] = v79;
  sub_268CD0F7C();
  v80 = sub_268F9ADA4();
  swift_beginAccess();
  *(v81 + 32) = v80;

  swift_endAccess();
  return v81;
}

double sub_268F7C430()
{
  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCAA8, &unk_268FAA330);
  sub_268E12E98();
  sub_268F9ADC4();

  return result;
}

double sub_268F7C4F0()
{
  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD768, &unk_268FA56A0);
  sub_268E571E0();
  sub_268F9ADC4();

  return result;
}

double sub_268F7C5B0()
{
  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDBB8, &qword_268FA6EA8);
  sub_268E516AC();
  sub_268F9ADC4();

  return result;
}

uint64_t sub_268F7C684()
{
  sub_268CD7930(v0 + 2);
  sub_268CD7930(v0 + 3);
  sub_268CD7930(v0 + 4);
  return v2;
}

uint64_t *sub_268F7C710()
{
  if (qword_2802DB928 != -1)
  {
    swift_once();
  }

  return &qword_2802F1820;
}

uint64_t sub_268F7C770()
{
  type metadata accessor for SetCellularDataHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1820 = result;
  return result;
}

uint64_t sub_268F7C7D8()
{
  v1 = *sub_268F7C710();

  return v1;
}

uint64_t sub_268F7C808(void *a1, void (*a2)(void), uint64_t a3)
{
  v37 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v38 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v37, &dword_268CBE000, v38, "SetCellularDataHandler handling intent", 38, 2);

  MEMORY[0x277D82BD8](v38);

  v39 = sub_268D38D28();

  if (v39)
  {

    v32 = sub_268D36960();

    MEMORY[0x277D82BE0](a1);
    if (v32)
    {
      [a1 binaryValue];
      type metadata accessor for INBinarySettingValue(0);
      sub_268CD925C();
      v31 = sub_268F9B754();
      MEMORY[0x277D82BE0](a1);
      if (v31)
      {
        v30 = 1;
      }

      else
      {
        [a1 binaryValue];
        v30 = sub_268F9B754();
      }

      MEMORY[0x277D82BD8](a1);
      v29 = v30;
    }

    else
    {
      v29 = 0;
    }

    MEMORY[0x277D82BD8](a1);
    if (v29)
    {
      v13 = sub_268F9B294();
      v8 = sub_268DC7AE8();
      v14 = *v8;
      MEMORY[0x277D82BE0](*v8);
      sub_268F9B734();
      sub_268F9AC14(v13, &dword_268CBE000, v14, "Can not turn on cellular data when Airplane mode is on.", 55, 2);

      MEMORY[0x277D82BD8](v14);

      v15 = sub_268DA9A7C(7, 0);
      a2();
      MEMORY[0x277D82BD8](v15);
    }

    else
    {

      v28 = sub_268D3841C();

      if (v28)
      {
        v27 = 1;
      }

      else
      {

        v26 = sub_268D38140();

        v27 = v26;
      }

      if (v27)
      {
        v16 = sub_268F9B284();
        v6 = sub_268DC7AE8();
        v17 = *v6;
        MEMORY[0x277D82BE0](*v6);
        sub_268F9B734();
        sub_268F9AC14(v16, &dword_268CBE000, v17, "Valid SIM card presented.", 25, 2);

        MEMORY[0x277D82BD8](v17);

        v18 = sub_268D38D64();

        v7 = sub_268DBDF24();
        v19 = *v7;
        v20 = v7[1];
        v21 = *(v7 + 16);
        v22 = *(v36 + 24);

        sub_268DAAB84(v18 & 1, a1, v19, v20, v21, v22 & 1, a2, a3, sub_268F7CF60, v36, 0, 1, 0, 0);
        return sub_268CD9A28(sub_268F7CF60, v36);
      }

      else
      {
        v23 = sub_268F9B294();
        v4 = sub_268DC7AE8();
        v24 = *v4;
        MEMORY[0x277D82BE0](*v4);
        sub_268F9B734();
        sub_268F9AC14(v23, &dword_268CBE000, v24, "Device does not have valid SIM card inserted.", 45, 2);

        MEMORY[0x277D82BD8](v24);

        v25 = sub_268DA9A7C(6, 0);
        a2();
        MEMORY[0x277D82BD8](v25);
      }
    }
  }

  else
  {
    v10 = sub_268F9B294();
    v9 = sub_268DC7AE8();
    v11 = *v9;
    MEMORY[0x277D82BE0](*v9);
    sub_268F9B734();
    sub_268F9AC14(v10, &dword_268CBE000, v11, "Device doesn't support cellular data.", 37, 2);

    MEMORY[0x277D82BD8](v11);

    v12 = sub_268DA9A7C(7, 0);
    a2();
    MEMORY[0x277D82BD8](v12);
  }
}

uint64_t sub_268F7CEF0(char a1)
{

  sub_268D390F0(a1 & 1);
}

uint64_t sub_268F7CFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v56 = a1;
  v84 = a2;
  v4 = v3;
  v5 = v56;
  v83 = v4;
  v90 = "ConfirmNumericSettingIntentStrategy actionForInput.";
  v88 = &dword_268CBE000;
  v57 = "ConfirmNumericSettingIntentStrategy actionForInput is not uso, treating it as CANCEL.";
  v58 = "ConfirmNumericSettingIntentStrategy actionForInput is ignore: no applicable action.";
  v59 = "ConfirmNumericSettingIntentStrategy actionForInput is ignore.";
  v60 = "ConfirmNumericSettingIntentStrategy actionForInput is handle.";
  v61 = "ConfirmSettingsIntentStrategy actionForInput is handle.";
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v102 = 0;
  v101 = 0;
  v86 = 0;
  v62 = sub_268F996C4();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v6, v7, v8);
  v66 = v35 - v65;
  v67 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v35 - v65, v11, v12);
  v68 = v35 - v67;
  v69 = (*(*(type metadata accessor for SettingsNLIntent(v13) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86, v14, v15, v16);
  v70 = v35 - v69;
  v71 = sub_268F9A704();
  v72 = *(v71 - 8);
  v73 = v71 - 8;
  v74 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86, v17, v18, v19);
  v75 = v35 - v74;
  v76 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v35 - v74, v22, v23);
  v77 = v35 - v76;
  v102 = v35 - v76;
  v78 = sub_268F99C64();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86, v24, v25, v26);
  v82 = v35 - v81;
  v101 = v35 - v81;
  v96 = sub_268F99C34();
  v93 = *(v96 - 8);
  v94 = v96 - 8;
  v85 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v96, v84, v27, v28);
  v95 = v35 - v85;
  v100 = v5;
  v99 = v29;
  v98 = v30;
  v92 = *sub_268DC94CC();
  MEMORY[0x277D82BE0](v92);
  v89 = sub_268F9B284();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v91 = sub_268F9B734();
  sub_268F9AC04(v90, 51, 2, v88, v92, v89);

  MEMORY[0x277D82BD8](v92);
  sub_268F99BE4();
  v97 = (*(v93 + 88))(v95, v96);
  if (v97 == *MEMORY[0x277D5C128])
  {
    v32 = v70;
    (*(v93 + 96))(v95, v96);
    (*(v72 + 32))(v77, v95, v71);
    v102 = v77;
    v45 = *sub_268DC94CC();
    MEMORY[0x277D82BE0](v45);
    v43 = sub_268F9B284();
    v44 = sub_268F9B734();
    sub_268F9AC04(v61, 55, 2, v88, v45, v43);

    v33 = MEMORY[0x277D82BD8](v45);
    (*(v72 + 16))(v75, v77, v71, v33);
    sub_268E42410(v75, v32);
    sub_268E42470(v68);
    sub_268D87800(v70);
    (*(v63 + 104))(v66, *MEMORY[0x277D5B960], v62);
    sub_268D8785C();
    v48 = sub_268F9B754();
    v47 = *(v63 + 8);
    v46 = v63 + 8;
    v47(v66, v62);
    v47(v68, v62);
    if (v48)
    {
      sub_268F998A4();
    }

    else
    {
      sub_268F99894();
    }

    return (*(v72 + 8))(v77, v71);
  }

  else if (v97 == *MEMORY[0x277D5C160])
  {
    (*(v93 + 96))(v95, v96);
    (*(v79 + 32))(v82, v95, v78);
    v101 = v82;
    if (sub_268F7DA8C(v82))
    {
      v54 = *sub_268DC94CC();
      MEMORY[0x277D82BE0](v54);
      v52 = sub_268F9B284();
      v53 = sub_268F9B734();
      sub_268F9AC04(v60, 61, 2, v88, v54, v52);

      MEMORY[0x277D82BD8](v54);
      sub_268F99894();
    }

    else
    {
      v51 = *sub_268DC94CC();
      MEMORY[0x277D82BE0](v51);
      v49 = sub_268F9B284();
      v50 = sub_268F9B734();
      sub_268F9AC04(v59, 61, 2, v88, v51, v49);

      MEMORY[0x277D82BD8](v51);
      sub_268F998A4();
    }

    return (*(v79 + 8))(v82, v78);
  }

  else
  {
    v37 = *sub_268DC94CC();
    MEMORY[0x277D82BE0](v37);
    v35[1] = sub_268F9B284();
    v38 = 0;
    v36 = sub_268F9B734();
    v39 = 2;
    sub_268F9AC04(v57, 85);

    v34 = MEMORY[0x277D82BD8](v37);
    (*(v93 + 8))(v95, v96, v34);
    v42 = *sub_268DC94CC();
    MEMORY[0x277D82BE0](v42);
    v40 = sub_268F9B284();
    v41 = sub_268F9B734();
    sub_268F9AC04(v58, 83, v39, v88, v42, v40);

    MEMORY[0x277D82BD8](v42);
    return sub_268F998A4();
  }
}

uint64_t sub_268F7DA8C(uint64_t a1)
{
  v44 = a1;
  v2 = v1;
  v3 = v44;
  v56 = v2;
  v80 = 0;
  v79 = 0;
  v66 = 0;
  v59 = sub_268F99CB4();
  v57 = *(v59 - 8);
  v58 = v59 - 8;
  v45 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59, v4, v5, v6);
  v46 = &v30[-v45];
  v47 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30[-v45], v8, v9, v10);
  v48 = &v30[-v47];
  v49 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30[-v47], v12, v13, v14);
  v60 = &v30[-v49];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC748, &qword_268F9F1F8);
  v53 = *(*(v15 - 8) + 64);
  v50 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v16, v17, v18);
  v51 = &v30[-v50];
  v52 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30[-v50], v19, v20, v21);
  v54 = &v30[-v52];
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30[-v52], v22, v23, v24);
  v67 = &v30[-v55];
  v80 = v3;
  v79 = v56;
  sub_268F99C54();
  v65 = sub_268F99CA4();
  v61 = *(v57 + 8);
  v62 = v57 + 8;
  v61(v60, v59);
  v78 = v65;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC750, &qword_268F9F200);
  v64 = sub_268D88014();
  sub_268F9B234();

  v68 = sub_268F99DE4();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = *(v69 + 48);
  v72 = v69 + 48;
  if (v71(v67, 1) == 1)
  {
    sub_268D8809C(v67, v25);
    v43 = 2;
  }

  else
  {
    v42 = sub_268F99D64();
    (*(v69 + 8))(v67, v68);
    v43 = v42 & 1;
  }

  v77 = v43;
  if (v43 == 2)
  {
    v41 = 0;
  }

  else
  {
    v41 = v77;
  }

  if (v41)
  {
    v40 = 1;
  }

  else
  {
    sub_268F99C54();
    v39 = sub_268F99CA4();
    v61(v48, v59);
    v76 = v39;
    sub_268F9B234();

    v26 = (v71)(v54, 1, v68);
    if (v26 == 1)
    {
      sub_268D8809C(v54, v27);
      v38 = 2;
    }

    else
    {
      v37 = sub_268F99D74();
      (*(v69 + 8))(v54, v68);
      v38 = v37 & 1;
    }

    v75 = v38;
    if (v38 == 2)
    {
      v36 = 0;
    }

    else
    {
      v36 = v75;
    }

    v40 = v36;
  }

  if (v40)
  {
    v35 = 1;
  }

  else
  {
    sub_268F99C54();
    v34 = sub_268F99CA4();
    v61(v46, v59);
    v74 = v34;
    sub_268F9B234();

    if ((v71)(v51, 1, v68) == 1)
    {
      sub_268D8809C(v51, v28);
      v33 = 2;
    }

    else
    {
      v32 = sub_268F99D84();
      (*(v69 + 8))(v51, v68);
      v33 = v32 & 1;
    }

    v73 = v33;
    if (v33 == 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = v73;
    }

    v35 = v31;
  }

  return v35 & 1;
}

uint64_t sub_268F7E1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC760, &unk_268F9F210);
  v4[10] = swift_task_alloc();
  v5 = sub_268F996C4();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = sub_268F99C34();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](sub_268F7E3BC, 0);
}

uint64_t sub_268F7E3BC()
{
  v40 = v0[17];
  v39 = v0[16];
  v41 = v0[15];
  v43 = v0[14];
  v46 = v0[13];
  v44 = v0[12];
  v45 = v0[11];
  v0[2] = v0;
  v1 = sub_268DC94CC();
  v38 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v37 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v36 = v2;
  sub_268F99BE4();
  v34 = sub_268F9AE64();
  v35 = v3;
  v36[3] = MEMORY[0x277D837D0];
  v36[4] = sub_268CDD224();
  *v36 = v34;
  v36[1] = v35;
  sub_268CD0F7C();
  sub_268F9AC04("ConfirmNumericSettingIntentStrategy Parsing confirmation response from parse: %@.", 81, 2, &dword_268CBE000, v38, v37);

  MEMORY[0x277D82BD8](v38);
  sub_268F99BE4();
  sub_268F7EC58(v40, v43);
  (*(v39 + 8))(v40, v41);
  v42 = *(v44 + 104);
  (v42)(v46, *MEMORY[0x277D5B960], v45);
  sub_268F7FB4C();
  v48 = sub_268F9AE04();
  v47 = *(v44 + 8);
  v47(v46, v45);
  if (v48)
  {
    v13 = v33[14];
    v12 = v33[11];
    v6 = sub_268DC94CC();
    v11 = *v6;
    MEMORY[0x277D82BE0](*v6);
    v10 = sub_268F9B294();
    sub_268F9B734();
    sub_268F9AC04("Confirmation response is missing or cannot be parsed.", 53, 2, &dword_268CBE000, v11, v10);

    MEMORY[0x277D82BD8](v11);
    type metadata accessor for FlowStrategy.IntentConversionError(0);
    sub_268E68B80(v7);
    swift_allocError();
    sub_268F99BE4();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v47(v13, v12);

    v8 = *(v33[2] + 8);
  }

  else
  {
    v31 = v33[13];
    v30 = v33[11];
    v42();
    sub_268D8785C();
    v32 = sub_268F9B754();
    v47(v31, v30);
    if (v32)
    {
      v28 = v33[14];
      v29 = v33[11];
      v27 = v33[10];
      v4 = sub_268DC94CC();
      v23 = *v4;
      MEMORY[0x277D82BE0](*v4);
      v22 = sub_268F9B284();
      sub_268F9B734();
      sub_268F9AC04("ConfirmNumericSettingIntentStrategy Confirmation response is CONFIRMED.", 71, 2, &dword_268CBE000, v23, v22);

      MEMORY[0x277D82BD8](v23);
      v24 = *MEMORY[0x277D5BED8];
      v26 = sub_268F99A94();
      v25 = *(v26 - 8);
      (*(v25 + 104))(v27, v24);
      (*(v25 + 56))(v27, 0, 1, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
      sub_268F99B44();
      sub_268D588E0();
      sub_268F99A84();
      v47(v28, v29);
    }

    else
    {
      v20 = v33[14];
      v21 = v33[11];
      v19 = v33[10];
      v5 = sub_268DC94CC();
      v15 = *v5;
      MEMORY[0x277D82BE0](*v5);
      v14 = sub_268F9B284();
      sub_268F9B734();
      sub_268F9AC04("ConfirmNumericSettingIntentStrategy Confirmation response is REJECTED.", 70, 2, &dword_268CBE000, v15, v14);

      MEMORY[0x277D82BD8](v15);
      v16 = *MEMORY[0x277D5BED0];
      v18 = sub_268F99A94();
      v17 = *(v18 - 8);
      (*(v17 + 104))(v19, v16);
      (*(v17 + 56))(v19, 0, 1, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
      sub_268F99B44();
      sub_268D588E0();
      sub_268F99A84();
      v47(v20, v21);
    }

    v8 = *(v33[2] + 8);
  }

  return v8();
}

uint64_t sub_268F7EC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v125 = a1;
  v93 = "ConfirmNumericSettingIntentStrategy received unsupported parse object: %@.";
  v94 = sub_268D89874;
  v95 = sub_268D89940;
  v96 = sub_268D89984;
  v97 = "ConfirmNumericSettingIntentStrategy userDialogAct is UserCancelled";
  v98 = "ConfirmNumericSettingIntentStrategy userDialogAct is UserRejected";
  v99 = "ConfirmNumericSettingIntentStrategy userDialogAct is UserAccepted";
  v141 = 0;
  v140 = 0;
  v143 = 0;
  v100 = 0;
  v142 = 0;
  v117 = 0;
  v101 = sub_268F99CB4();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v105 = &v52[-v104];
  v106 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, &v52[-v104], v8, v9);
  v107 = &v52[-v106];
  v108 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, &v52[-v106], v12, v13);
  v109 = &v52[-v108];
  v110 = sub_268F99C64();
  v111 = *(v110 - 8);
  v112 = v110 - 8;
  v113 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v117, v14, v15, v16);
  v114 = &v52[-v113];
  v143 = &v52[-v113];
  v115 = (*(*(type metadata accessor for SettingsNLIntent(v17) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v117, v18, v19, v20);
  v116 = &v52[-v115];
  v118 = sub_268F9A704();
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v121 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v117, v21, v22, v23);
  v122 = &v52[-v121];
  v123 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, &v52[-v121], v26, v27);
  v124 = &v52[-v123];
  v142 = &v52[-v123];
  v134 = sub_268F99C34();
  v132 = *(v134 - 8);
  v133 = v134 - 8;
  v127 = *(v132 + 64);
  v126 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v134, v125, v134, v28);
  v128 = &v52[-v126];
  v129 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = MEMORY[0x28223BE20](&v52[-v126], v29, v30, v31);
  v135 = &v52[-v129];
  v141 = v33;
  v140 = v2;
  v130 = *(v132 + 16);
  v131 = v132 + 16;
  v130(v32);
  v136 = (*(v132 + 88))(v135, v134);
  if (v136 == *MEMORY[0x277D5C128])
  {
    v34 = v116;
    (*(v132 + 96))(v135, v134);
    (*(v119 + 32))(v124, v135, v118);
    v142 = v124;
    (*(v119 + 16))(v122);
    sub_268E42410(v122, v34);
    sub_268E42470(v92);
    sub_268D87800(v116);
    return (*(v119 + 8))(v124, v118);
  }

  if (v136 == *MEMORY[0x277D5C160])
  {
    v36 = v100;
    v37 = v114;
    (*(v132 + 96))(v135, v134);
    (*(v111 + 32))(v37, v135, v110);
    v143 = v37;
    sub_268F99C54();
    v87 = sub_268F99CA4();
    v85 = *(v102 + 8);
    v86 = v102 + 8;
    v85(v109, v101);
    v139 = v87;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC750, &qword_268F9F200);
    v89 = sub_268D898B8();
    result = sub_268F9AFB4();
    v90 = v36;
    v91 = result;
    if (v36)
    {
      __break(1u);
    }

    else
    {
      v84 = v91;
      sub_268CD7930(&v139);
      if (v84)
      {
        v79 = sub_268F9B284();
        v81 = *sub_268DC94CC();
        MEMORY[0x277D82BE0](v81);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v82 = 0;
        v80 = sub_268F9B734();
        sub_268F9AC14(v79, &dword_268CBE000, v81, v99, 65, 2);

        MEMORY[0x277D82BD8](v81);
        v83 = *MEMORY[0x277D5B978];
        v38 = sub_268F996C4();
        (*(*(v38 - 8) + 104))(v92, v83);
        return (*(v111 + 8))(v114, v110);
      }

      v39 = v90;
      sub_268F99C54();
      v76 = sub_268F99CA4();
      v85(v107, v101);
      v138 = v76;
      result = sub_268F9AFB4();
      v77 = v39;
      v78 = result;
      if (!v39)
      {
        v75 = v78;
        sub_268CD7930(&v138);
        if (v75)
        {
          v70 = sub_268F9B284();
          v72 = *sub_268DC94CC();
          MEMORY[0x277D82BE0](v72);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
          v73 = 0;
          v71 = sub_268F9B734();
          sub_268F9AC14(v70, &dword_268CBE000, v72, v98, 65, 2);

          MEMORY[0x277D82BD8](v72);
          v74 = *MEMORY[0x277D5B968];
          v40 = sub_268F996C4();
          (*(*(v40 - 8) + 104))(v92, v74);
          return (*(v111 + 8))(v114, v110);
        }

        v41 = v77;
        sub_268F99C54();
        v68 = sub_268F99CA4();
        v85(v105, v101);
        v137 = v68;
        result = sub_268F9AFB4();
        v69 = result;
        if (!v41)
        {
          v67 = v69;
          sub_268CD7930(&v137);
          if (v67)
          {
            v62 = sub_268F9B284();
            v64 = *sub_268DC94CC();
            MEMORY[0x277D82BE0](v64);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
            v65 = 0;
            v63 = sub_268F9B734();
            sub_268F9AC14(v62, &dword_268CBE000, v64, v97, 66, 2);

            MEMORY[0x277D82BD8](v64);
            v66 = *MEMORY[0x277D5B970];
            v42 = sub_268F996C4();
            (*(*(v42 - 8) + 104))(v92, v66);
            return (*(v111 + 8))(v114, v110);
          }

          (*(v111 + 8))(v114, v110);
          goto LABEL_15;
        }

LABEL_19:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v59 = sub_268F9B294();
  v61 = *sub_268DC94CC();
  MEMORY[0x277D82BE0](v61);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v58 = sub_268F9B734();
  v56 = v43;
  (v130)(v128, v125, v134);
  v54 = sub_268F9AE64();
  v55 = v44;
  v56[3] = MEMORY[0x277D837D0];
  v45 = sub_268CDD224();
  v46 = v54;
  v47 = v55;
  v48 = v56;
  v56[4] = v45;
  *v48 = v46;
  v48[1] = v47;
  sub_268CD0F7C();
  v60 = v49;
  sub_268F9AC14(v59, &dword_268CBE000, v61, v93, 74, 2);

  v50 = MEMORY[0x277D82BD8](v61);
  (*(v132 + 8))(v135, v134, v50);
LABEL_15:
  v53 = *MEMORY[0x277D5B960];
  v51 = sub_268F996C4();
  return (*(*(v51 - 8) + 104))(v92, v53);
}

unint64_t sub_268F7FB4C()
{
  v2 = qword_2802DE8B0;
  if (!qword_2802DE8B0)
  {
    sub_268F996C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE8B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F7FBCC(uint64_t a1, uint64_t a2)
{
  v3[13] = v2;
  v3[12] = a2;
  v3[11] = a1;
  v3[7] = v3;
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = 0;
  sub_268F99834();
  v3[14] = swift_task_alloc();
  v4 = sub_268F99BC4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[8] = a2;
  v3[9] = v2;

  return MEMORY[0x2822009F8](sub_268F7FD1C, 0);
}

uint64_t sub_268F7FD1C()
{
  v6 = v0[13];
  v0[7] = v0;
  v1 = sub_268DC94CC();
  v5 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v4 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("ConfirmNumericSettingIntentStrategy Providing confirmation dialog.", 66, 2, &dword_268CBE000, v5, v4);

  MEMORY[0x277D82BD8](v5);
  v0[18] = *(v6 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
  v10 = sub_268F99B34();
  v0[19] = v10;
  v8 = sub_268F99B44();
  v0[20] = v8;
  v9 = sub_268F99B24();
  v0[21] = v9;
  v2 = swift_task_alloc();
  *(v7 + 176) = v2;
  *v2 = *(v7 + 56);
  v2[1] = sub_268F7FEF0;

  return sub_268ED3BE0(v10, v8, v9);
}

uint64_t sub_268F7FEF0(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 56) = *v2;
  *(v6 + 184) = a1;
  *(v6 + 192) = v1;

  if (v1)
  {
    v3 = sub_268E87A70;
  }

  else
  {
    v5 = *(v6 + 160);

    v3 = sub_268F800A4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F800A4()
{
  v1 = v0[23];
  v9 = v0[13];
  v7 = v0[12];
  v0[7] = v0;
  v0[10] = v1;
  sub_268F99814();

  v8 = swift_task_alloc();
  *(v8 + 16) = v9;
  *(v8 + 24) = v7;
  sub_268F99B94();

  sub_268CDE730(v9 + 152, (v0 + 2));
  v11 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
  v2 = swift_task_alloc();
  v10[25] = v2;
  *v2 = v10[7];
  v2[1] = sub_268E87808;
  v3 = v10[23];
  v4 = v10[17];
  v5 = v10[11];

  return MEMORY[0x2821BB480](v5, v3, v4, v11, v12);
}

uint64_t sub_268F80230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v11 = a2;
  v13 = a3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v11, v4, v5);
  v18 = &v10 - v12;
  v23 = v6;
  v22 = v7;
  v21 = a3;
  v17 = *(v7 + 96);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
  v16 = sub_268F99B44();
  v15 = sub_268F99B24();
  sub_268E04748(v16, v15, v18);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);

  v8 = *(*(sub_268F999A4() - 8) + 56);
  v20 = 1;
  v8(v18, 0);
  sub_268F99BA4();
  return sub_268F99BB4();
}

uint64_t sub_268F803D8(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](sub_268F8042C, 0);
}

uint64_t sub_268F8042C()
{
  *(v0 + 16) = v0;
  v1 = sub_268DC94CC();
  v7 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v6 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("ConfirmNumericSettingIntentStrategy Providing confirmation Cancelled dialog.", 76, 2, &dword_268CBE000, v7, v6);

  MEMORY[0x277D82BD8](v7);
  v2 = swift_task_alloc();
  v8[8] = v2;
  *v2 = v8[2];
  v2[1] = sub_268D8B9D8;
  v3 = v8[6];
  v4 = v8[5];

  return sub_268F80584(v4, v3);
}

uint64_t sub_268F80584(uint64_t a1, uint64_t a2)
{
  v3[13] = v2;
  v3[12] = a2;
  v3[11] = a1;
  v3[7] = v3;
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = 0;
  sub_268F99834();
  v3[14] = swift_task_alloc();
  v4 = sub_268F99BC4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[8] = a2;
  v3[9] = v2;

  return MEMORY[0x2822009F8](sub_268F806D4, 0);
}

uint64_t sub_268F806D4()
{
  v6 = v0[13];
  v0[7] = v0;
  v1 = sub_268DC94CC();
  v5 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v4 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("ConfirmNumericSettingIntentStrategy Providing confirmation REJECTED dialog.", 75, 2, &dword_268CBE000, v5, v4);

  MEMORY[0x277D82BD8](v5);
  v0[18] = *(v6 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
  v10 = sub_268F99B34();
  v0[19] = v10;
  v8 = sub_268F99B44();
  v0[20] = v8;
  v9 = sub_268F99B24();
  v0[21] = v9;
  v2 = swift_task_alloc();
  *(v7 + 176) = v2;
  *v2 = *(v7 + 56);
  v2[1] = sub_268F7FEF0;

  return sub_268ED4968(v10, v8, v9);
}

uint64_t sub_268F808CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268D34238;

  return sub_268F7E1C4(a1, a2, a3);
}

uint64_t sub_268F80994(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268F7FBCC(a1, a2);
}

uint64_t sub_268F80A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for ConfirmNumericSettingIntentStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9D08](a1, a2, v6, a4);
}

uint64_t sub_268F80B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for ConfirmNumericSettingIntentStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9D10](a1, a2, v6, a4);
}

uint64_t sub_268F80C24(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268F80584(a1, a2);
}

uint64_t sub_268F80CE4(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268F803D8(a1, a2);
}

uint64_t sub_268F80DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for ConfirmNumericSettingIntentStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D00](a1, a2, a3, v7, a5);
}

uint64_t sub_268F80E80(uint64_t a1, uint64_t a2)
{
  v7[6] = a1;
  v7[5] = a2;
  type metadata accessor for AuthenticationHandler();
  sub_268CDE730(a2, v7);
  v2 = sub_268CDC590();
  sub_268E4C814(v7, v2);
  v6 = sub_268E4CA7C(a1);

  return v6 & 1;
}

uint64_t *sub_268F80F24()
{
  if (qword_2802DB930 != -1)
  {
    swift_once();
  }

  return &qword_2802F1828;
}

uint64_t sub_268F80F84()
{
  type metadata accessor for SetBassReduceHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1828 = result;
  return result;
}

uint64_t sub_268F80FEC()
{
  v1 = *sub_268F80F24();

  return v1;
}

uint64_t sub_268F8101C(void *a1, void (*a2)(id), uint64_t a3)
{
  v26 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v27 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v26, &dword_268CBE000, v27, "SetBassReduceHandler handling intent", 36, 2);

  MEMORY[0x277D82BD8](v27);
  sub_268E50B9C();

  v29 = [a1 settingMetadata];
  v30 = sub_268E50C88(v29);
  MEMORY[0x277D82BD8](v29);

  if (v30)
  {
    v10 = sub_268F9B294();
    v8 = sub_268DC7AE8();
    v11 = *v8;
    MEMORY[0x277D82BE0](*v8);
    sub_268F9B734();
    sub_268F9AC14(v10, &dword_268CBE000, v11, "Bass Reduce mode not available on Sidekick devices", 50, 2);

    MEMORY[0x277D82BD8](v11);

    v12 = sub_268E948B8(3);
    v13 = sub_268DAB158(0, v12, v9);

    a2(v13);
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    v22 = [a1 settingMetadata];
    if (v22 && (v21 = [v22 targetDevice], *&v4 = MEMORY[0x277D82BD8](v22).n128_u64[0], v21))
    {
      [v21 deviceCategory];
      MEMORY[0x277D82BD8](v21);
      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v19 = 0;
    }

    else
    {
      type metadata accessor for INDeviceCategory(0);
      sub_268CD7818();
      v19 = sub_268F9AE04();
    }

    if (v19)
    {

      MEMORY[0x277D82BE0](a1);
      v18 = swift_allocObject();
      v18[2] = v25;
      v18[3] = a2;
      v18[4] = a3;
      v18[5] = a1;
      sub_268D47788();
    }

    else
    {
      v14 = sub_268F9B294();
      v5 = sub_268DC7AE8();
      v15 = *v5;
      MEMORY[0x277D82BE0](*v5);
      sub_268F9B734();
      sub_268F9AC14(v14, &dword_268CBE000, v15, "Bass Reduce mode is only available on HomePod", 45, 2);

      MEMORY[0x277D82BD8](v15);

      v16 = sub_268E948B8(3);
      v17 = sub_268DAB158(0, v16, v6);

      a2(v17);
      MEMORY[0x277D82BD8](v17);
    }
  }
}

uint64_t sub_268F815C0(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v29 = a1 == 2;

  if (a1 == 2)
  {

    v28 = sub_268D477AC();

    v36 = v28;
  }

  else
  {
    v36 = a1;
  }

  if (v36 == 2)
  {
    v12 = sub_268F9B294();
    v11 = sub_268DC7AE8();
    v13 = *v11;
    MEMORY[0x277D82BE0](*v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v12, &dword_268CBE000, v13, "Unable to determine the current bass value", 42, 2);

    MEMORY[0x277D82BD8](v13);

    v14 = sub_268DA9A7C(7, 0);
    a3();
    MEMORY[0x277D82BD8](v14);
  }

  else
  {
    v27 = [a5 binaryValue];
    if (v27 == 1)
    {
      v26 = 2;
    }

    else if (v27 == 2)
    {
      v26 = 1;
    }

    else
    {
      if (v27 != 3)
      {
        v23 = sub_268F9B294();
        v5 = sub_268DC7AE8();
        v24 = *v5;
        MEMORY[0x277D82BE0](*v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        v22 = v6;
        MEMORY[0x277D82BE0](a5);
        sub_268CD7620();
        sub_268D28940();
        v20 = sub_268F9AE74();
        v21 = v7;
        v22[3] = MEMORY[0x277D837D0];
        v22[4] = sub_268CDD224();
        *v22 = v20;
        v22[1] = v21;
        sub_268CD0F7C();
        sub_268F9AC14(v23, &dword_268CBE000, v24, "Unknown binary setting value for intent: %@.", 44, 2);

        MEMORY[0x277D82BD8](v24);

        v25 = sub_268DA9A7C(7, 0);
        a3();
        MEMORY[0x277D82BD8](v25);
      }

      v26 = 3;
    }

    v9 = sub_268DBDCB4();
    v15 = *v9;
    v16 = v9[1];
    v17 = *(v9 + 16);
    v18 = *(a2 + 24);

    v10 = swift_allocObject();
    *(v10 + 16) = v29;
    *(v10 + 24) = a2;
    v19 = v10;
    sub_268DAAB84(v36 & 1, a5, v15, v16, v17, v18 & 1, a3, a4, sub_268F81C24, v10, v26, 0, 0, 0);
    return sub_268CD9A28(sub_268F81C24, v19);
  }
}

uint64_t sub_268F81B40(char a1, char a2)
{
  if (a2)
  {

    sub_268D47920(a1 & 1);
  }

  else
  {

    sub_268D361FC();
  }
}

uint64_t sub_268F81C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v12 = 0;
  v26 = sub_268F9A9C4();
  v21 = *(v26 - 8);
  v22 = v26 - 8;
  v14 = v21[8];
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v24, v23, v3);
  v18 = &v12 - v13;
  v15 = v13;
  MEMORY[0x28223BE20](v4, v5, v6, &v12 - v13);
  v19 = &v12 - v15;
  v33 = v7;
  v32 = v8;
  v31 = v9;
  type metadata accessor for SettingsNumericSetting.Builder(v10);
  v17 = v21[2];
  v16 = v21 + 2;
  v17(v19, v25, v26);

  v17(v18, v23, v26);
  v20 = sub_268F81EE8(v19, v24, v18);
  v30 = v20;

  v29 = sub_268F824F0(v20);

  v34 = v29;

  v28 = v21[1];
  v27 = v21 + 1;
  v28(v23, v26);

  v28(v25, v26);

  return v29;
}

uint64_t type metadata accessor for SettingsNumericSetting.Builder(uint64_t a1)
{
  v2 = qword_280FE6238;
  if (!qword_280FE6238)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

double sub_268F81F44@<D0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_name;
  swift_beginAccess();
  v2 = sub_268F9A9C4();
  (*(*(v2 - 8) + 16))(a1, v4);
  swift_endAccess();
  return result;
}

uint64_t sub_268F81FD0(uint64_t a1)
{
  v12 = a1;
  v13 = sub_268F9A9C4();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v13, v12, v13, v2);
  v8 = &v5 - v6;
  (*(v10 + 16))(v3);
  v7 = v1 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_name;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_268F82174()
{
  v2 = (v0 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_value);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_268F821D4(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_value);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_268F822A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v21 = a2;
  v18 = a3;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v23 = sub_268F9A9C4();
  v19 = *(v23 - 8);
  v20 = v23 - 8;
  v5 = MEMORY[0x28223BE20](v23, v22, v23, v4);
  v17 = &v13 - v6;
  v29 = v7;
  v28 = v21;
  v27 = v18;
  v30 = v3;
  v13 = v3;
  v16 = *(v19 + 16);
  v15 = v19 + 16;
  v16(v5);
  (*(v19 + 32))(v13 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_name, v17, v23);
  v14 = v30;

  v8 = v17;
  v9 = v16;
  v10 = v18;
  v11 = v23;
  *(v14 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_value) = v21;
  (v9)(v8, v10, v11);
  v26 = sub_268F5038C(v17);

  v30 = v26;
  v25 = *(v19 + 8);
  v24 = v19 + 8;
  v25(v18, v23);

  v25(v22, v23);

  return v26;
}

uint64_t sub_268F824A4()
{
  type metadata accessor for SettingsNumericSetting(0);

  return sub_268F824F0(v1);
}

uint64_t type metadata accessor for SettingsNumericSetting(uint64_t a1)
{
  v2 = qword_280FE6120;
  if (!qword_280FE6120)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F82670()
{
  v3 = OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_name;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 8))(v0 + v3);
}

uint64_t sub_268F826F4()
{
  v3 = sub_268F504C0();
  v2 = OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_name;
  v0 = sub_268F9A9C4();
  (*(*(v0 - 8) + 8))(v3 + v2);

  return v3;
}

uint64_t SettingsNumericSetting.name.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name;
  v2 = sub_268F9A9C4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268F828A0()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value);

  return v2;
}

uint64_t sub_268F828E0(uint64_t a1)
{
  v21 = a1;
  v26 = 0;
  v25 = 0;
  v14 = sub_268F9A9C4();
  v10 = *(v14 - 8);
  v11 = v14 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v2, v3, v4);
  v13 = &v7 - v7;
  v25 = v5;
  v26 = v1;
  v12 = v1;
  v8 = v5 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_name;
  v9 = &v24;
  v15 = 32;
  v16 = 0;
  swift_beginAccess();
  (*(v10 + 16))(v13, v8, v14);
  swift_endAccess();
  (*(v10 + 32))(v12 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name, v13, v14);
  v19 = v26;
  v17 = (v21 + OBJC_IVAR____TtCC19SiriSettingsIntents22SettingsNumericSetting7Builder_value);
  v18 = &v23;
  swift_beginAccess();
  v20 = *v17;

  swift_endAccess();
  *(v19 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value) = v20;

  v22 = sub_268F50764(v21);

  v26 = v22;

  return v22;
}

uint64_t sub_268F82AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17[2] = 0;
  v17[3] = a1;
  v17[4] = a2;

  v17[0] = sub_268F9AEF4();
  v17[1] = v3;
  v16[2] = a1;
  v16[3] = a2;
  v15 = MEMORY[0x26D62DB50](v17[0], v3, a1, a2);
  sub_268CD9D30(v17);
  if (v15)
  {

    v9 = v12 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name;
    v10 = sub_268F9A9C4();
    a3[3] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v9);
  }

  else
  {

    v16[0] = sub_268F9AEF4();
    v16[1] = v6;
    v8 = MEMORY[0x26D62DB50](v16[0], v6, a1, a2);
    sub_268CD9D30(v16);

    if (v8)
    {
      v7 = *(v12 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value);

      result = sub_268F9A874();
      a3[3] = result;
      *a3 = v7;
    }

    else
    {

      sub_268F508B4(a1, a2, a3);
    }
  }

  return result;
}

unint64_t sub_268F82D38()
{
  v2 = qword_2802DE8B8;
  if (!qword_2802DE8B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE8B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F82EB4()
{
  v2 = qword_280FE6258;
  if (!qword_280FE6258)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE6258);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F82F60(void *a1)
{
  swift_allocObject();
  v5 = sub_268F82FEC(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_268F82FEC(void *a1)
{
  v42 = a1;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v37 = sub_268F9A9C4();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37, v2, v3, v4);
  v41 = v16 - v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE8C0, &qword_268FAE1C0);
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42, v5, v6, v7);
  v47 = v16 - v46;
  v59 = v16 - v46;
  v57 = v8;
  v58 = v1;
  v49 = v8[3];
  v50 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v49);
  sub_268F82EB4();
  v9 = v48;
  sub_268F9B834();
  v51 = v9;
  v52 = v9;
  if (v9)
  {
    v21 = v52;
    v22 = 0;
  }

  else
  {
    v33 = v58;
    v34 = &v56;
    v56 = 0;
    sub_268DD91D4();
    v10 = v51;
    sub_268F9B654();
    v35 = v10;
    v36 = v10;
    if (v10)
    {
      v20 = v36;
      (*(v44 + 8))(v47, v43);
      v21 = v20;
      v22 = 0;
    }

    else
    {
      (*(v38 + 32))(v33 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name, v41, v37);
      v28 = v58;
      v30 = sub_268F9A874();
      v29 = &v54;
      v54 = 1;
      sub_268E94018();
      v11 = v35;
      sub_268F9B654();
      v31 = v11;
      v32 = v11;
      if (v11)
      {
        v19 = v32;
        (*(v44 + 8))(v47, v43);
        v21 = v19;
        v22 = 1;
      }

      else
      {
        v12 = v42;
        *(v28 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value) = v55;
        v24 = v53;
        sub_268CDE730(v12, v53);
        v13 = v31;
        v14 = SettingsSetting.init(from:)(v24);
        v25 = v13;
        v26 = v14;
        v27 = v13;
        if (!v13)
        {
          v23 = v26;

          v58 = v23;
          (*(v44 + 8))(v47, v43);
          __swift_destroy_boxed_opaque_existential_0(v42);

          return v23;
        }

        v18 = v27;
        (*(v44 + 8))(v47, v43);
        v21 = v18;
        v22 = 7;
      }
    }
  }

  v17 = v22;
  v16[2] = v21;
  __swift_destroy_boxed_opaque_existential_0(v42);
  if ((v17 & 4) == 0)
  {
    if (v17)
    {
      (*(v38 + 8))(v58 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name, v37);
    }

    if ((v17 & 2) != 0)
    {
    }

    v16[1] = v58;
    type metadata accessor for SettingsNumericSetting(0);
    swift_deallocPartialClassInstance();
  }

  return v16[0];
}

uint64_t sub_268F835BC(void *a1)
{
  v40 = a1;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v29 = sub_268F9A9C4();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29, v2, v3, v4);
  v33 = v14 - v32;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE8C8, qword_268FAE1C8);
  v6 = v34;
  v35 = v5;
  v36 = *(v5 - 8);
  v37 = v5 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40, v7, v8, v9);
  v39 = v14 - v38;
  v48 = v14 - v38;
  v47 = v10;
  v46 = v1;

  sub_268F50E0C(v40);
  v41 = v6;
  v42 = v6;
  if (v6)
  {
    v15 = v42;

    v16 = v15;
  }

  else
  {

    v23 = v40[3];
    v24 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v23);
    sub_268F82EB4();
    sub_268F9B844();
    (*(v30 + 16))(v33, v28 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name, v29);
    v25 = &v45;
    v45 = 0;
    sub_268DD95FC();
    v11 = v41;
    sub_268F9B6E4();
    v26 = v11;
    v27 = v11;
    if (v11)
    {
      v14[1] = v27;
      (*(v30 + 8))(v33, v29);
      return (*(v36 + 8))(v39, v35);
    }

    else
    {
      (*(v30 + 8))(v33, v29);
      v17 = *(v28 + OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_value);

      v20 = &v44;
      v44 = v17;
      v18 = &v43;
      v43 = 1;
      v19 = sub_268F9A874();
      sub_268E94098();
      v12 = v26;
      sub_268F9B6E4();
      v21 = v12;
      v22 = v12;
      if (v12)
      {
        v14[0] = v22;
      }

      return (*(v36 + 8))(v39, v35);
    }
  }

  return result;
}

uint64_t sub_268F83AA0()
{
  v3 = OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 8))(v0 + v3);
}

uint64_t SettingsNumericSetting.deinit()
{
  v3 = SettingsSetting.deinit();
  v2 = OBJC_IVAR____TtC19SiriSettingsIntents22SettingsNumericSetting_name;
  v0 = sub_268F9A9C4();
  (*(*(v0 - 8) + 8))(v3 + v2);

  return v3;
}

uint64_t sub_268F83C38(uint64_t a1)
{
  updated = sub_268F9A9C4();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_268F83D64(uint64_t a1)
{
  updated = sub_268F9A9C4();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_268F83E74()
{
  v2 = qword_2802DE8D0;
  if (!qword_2802DE8D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE8D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F83F08()
{
  v2 = qword_280FE6248;
  if (!qword_280FE6248)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE6248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F83F9C()
{
  v2 = qword_280FE6250;
  if (!qword_280FE6250)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE6250);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F84018()
{
  if (qword_2802DB938 != -1)
  {
    swift_once();
  }

  return &qword_2802F1830;
}

uint64_t sub_268F84078()
{
  type metadata accessor for SetFlashlightHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1830 = result;
  return result;
}

uint64_t sub_268F840E0()
{
  v1 = *sub_268F84018();

  return v1;
}

uint64_t sub_268F84110(void *a1, void (*a2)(id), uint64_t a3)
{
  v48 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v49 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v48, &dword_268CBE000, v49, "SetFlashlightHandler handling intent", 36, 2);

  MEMORY[0x277D82BD8](v49);

  v50 = sub_268D3DE34();

  usleep(0x30D40u);
  if (sub_268D3DF9C())
  {
    v43 = sub_268D3E1B0() > 0.0;
    v42 = sub_268D3DFD8();
    MEMORY[0x277D82BE0](a1);
    if (v43)
    {
      v39 = 0;
    }

    else
    {
      [a1 binaryValue];
      type metadata accessor for INBinarySettingValue(0);
      sub_268CD925C();
      v41 = sub_268F9B754();
      MEMORY[0x277D82BE0](a1);
      if (v41)
      {
        v40 = 1;
      }

      else
      {
        [a1 binaryValue];
        v40 = sub_268F9B754();
      }

      MEMORY[0x277D82BD8](a1);
      v39 = v40;
    }

    MEMORY[0x277D82BD8](a1);
    if (v39)
    {
      v38 = v42;
    }

    else
    {
      v38 = 0;
    }

    if (v38)
    {
      v34 = sub_268F9B284();
      v4 = sub_268DC7AE8();
      v35 = *v4;
      MEMORY[0x277D82BE0](*v4);
      sub_268F9B734();
      sub_268F9AC14(v34, &dword_268CBE000, v35, "The flashlight is overheated.", 29, 2);

      MEMORY[0x277D82BD8](v35);

      v36 = sub_268E948B8(5);
      v37 = sub_268DAB158(0, v36, v5);

      a2(v37);
      MEMORY[0x277D82BD8](v37);
    }

    else if (sub_268D3E0C4())
    {
      v33 = sub_268D3E2B0();
      if (v33)
      {
        [v33 floatValue];
        v30 = v7;
        MEMORY[0x277D82BD8](v33);
        v31 = v30;
        v32 = 0;
      }

      else
      {
        v31 = 0.0;
        v32 = 1;
      }

      if (v32)
      {
        v29 = 1.0;
      }

      else
      {
        v29 = v31;
      }

      v8 = sub_268DBDFF4();
      v24 = *v8;
      v25 = v8[1];
      v26 = *(v8 + 16);
      v27 = *(v47 + 24);

      v9 = swift_allocObject();
      *(v9 + 16) = v50;
      *(v9 + 24) = v29;
      v28 = v9;
      sub_268DAAB84(v43, a1, v24, v25, v26, v27 & 1, a2, a3, sub_268F84984, v9, 0, 1, 0, 0);
      sub_268CD9A28(sub_268F84984, v28);
    }

    else
    {
      v20 = sub_268F9B284();
      v10 = sub_268DC7AE8();
      v21 = *v10;
      MEMORY[0x277D82BE0](*v10);
      sub_268F9B734();
      sub_268F9AC14(v20, &dword_268CBE000, v21, "The flashlight is unavailable.", 30, 2);

      MEMORY[0x277D82BD8](v21);

      v22 = sub_268E948B8(6);
      v23 = sub_268DAB158(0, v22, v11);

      a2(v23);
      MEMORY[0x277D82BD8](v23);

      v12 = sub_268E948B8(6);
      sub_268E5016C(v12, v13, 0, 0);
    }
  }

  else
  {
    v16 = sub_268F9B284();
    v14 = sub_268DC7AE8();
    v17 = *v14;
    MEMORY[0x277D82BE0](*v14);
    sub_268F9B734();
    sub_268F9AC14(v16, &dword_268CBE000, v17, "The device does not have a flashlight.", 38, 2);

    MEMORY[0x277D82BD8](v17);

    v18 = sub_268E948B8(3);
    v19 = sub_268DAB158(0, v18, v15);

    a2(v19);
    MEMORY[0x277D82BD8](v19);
  }
}

void sub_268F848D8(char a1, float a2)
{
  if (a1)
  {
    sub_268D3E2EC(a2);
  }

  else
  {
    sub_268D3E2EC(0.0);
  }
}

uint64_t *sub_268F849D8()
{
  if (qword_2802DB948 != -1)
  {
    swift_once();
  }

  return &qword_2802DE8D8;
}

uint64_t *sub_268F84A38()
{
  if (qword_280FE54E0 != -1)
  {
    swift_once();
  }

  return &qword_280FE8210;
}

uint64_t sub_268F84A98()
{
  type metadata accessor for GetStandByHandler();
  sub_268D58CB4(v1);
  result = sub_268DAEEDC(1, v1);
  qword_280FE8210 = result;
  return result;
}

uint64_t sub_268F84AEC()
{
  v1 = *sub_268F84A38();

  return v1;
}

double sub_268F84B1C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v32 = 0;
  v35 = a1;
  v33 = a2;
  v34 = a3;
  sub_268CDD0DC();
  v22 = sub_268CD42AC(7, 0);
  v31 = v22;
  v30 = a1;
  v3 = sub_268D2E630();
  v26 = SettingIntent.deviceCategory.getter(v3, &protocol witness table for INGetSettingIntent);
  v27 = v4 & 1;
  v28 = 1;
  v29 = 0;
  if (v4)
  {
    v18 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory(0);
    sub_268CD7818();
    v18 = sub_268F9AE04();
  }

  if (v18)
  {
    sub_268CDE730(v20 + 24, v23);
    v15 = v24;
    v14 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v16 = (*(v14 + 48))(v15);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v11 = sub_268F9B284();
    v5 = sub_268DC7AE8();
    v12 = *v5;
    MEMORY[0x277D82BE0](*v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v11, &dword_268CBE000, v12, "Getting StandBy value not allowed", 33, 2);

    MEMORY[0x277D82BD8](v12);
    sub_268E948B8(23);
    v13 = sub_268F9AE14();

    [v22 setErrorDetail_];
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    v8 = sub_268F9B284();
    v7 = sub_268DC7AE8();
    v9 = *v7;
    MEMORY[0x277D82BE0](*v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v8, &dword_268CBE000, v9, "Getting StandBy not available", 29, 2);

    MEMORY[0x277D82BD8](v9);
    sub_268E948B8(17);
    v10 = sub_268F9AE14();

    [v22 setErrorDetail_];
    MEMORY[0x277D82BD8](v10);
  }

  a2(v22);

  *&result = MEMORY[0x277D82BD8](v22).n128_u64[0];
  return result;
}

uint64_t sub_268F84F90()
{
  type metadata accessor for StandBySettings();
  v0 = sub_268F85018();
  result = sub_268F85048(v0, v1);
  qword_2802DE8D8 = result;
  return result;
}

uint64_t static StandBySettings.shared.getter()
{
  v1 = *sub_268F849D8();

  return v1;
}

uint64_t sub_268F850D4()
{
  result = sub_268F9AEF4();
  qword_2802F1838 = result;
  qword_2802F1840 = v1;
  return result;
}

uint64_t *sub_268F85118()
{
  if (qword_2802DB950 != -1)
  {
    swift_once();
  }

  return &qword_2802F1838;
}

uint64_t sub_268F85178()
{
  v1 = *sub_268F85118();

  return v1;
}

uint64_t sub_268F851B4(uint64_t a1, uint64_t a2)
{
  sub_268D55794();

  *(v5 + 16) = sub_268D478D8(a1, a2);

  return v5;
}

uint64_t sub_268F85234(uint64_t a1)
{
  v16 = 0;
  v13 = 0;
  v17 = a1;
  v15 = a1;
  v14 = 1;
  type metadata accessor for INDeviceCategory(0);
  sub_268CD90DC();
  if ((sub_268F9B754() & 1) == 0)
  {
    v4 = 0;
    return v4 & 1;
  }

  v8 = *(v9 + 16);
  MEMORY[0x277D82BE0](v8);
  if (!v8)
  {
    goto LABEL_11;
  }

  v13 = v8;
  sub_268F85118();

  v6 = sub_268F9AE14();

  v7 = [v8 objectForKey_];
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    sub_268F9B404();
    sub_268D55CF0(v10, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v12 = 0;
  }

  v5 = v12 != 0;
  sub_268D28414(v11);
  if (!v5)
  {
    MEMORY[0x277D82BD8](v8);
LABEL_11:
    v4 = 1;
    return v4 & 1;
  }

  sub_268F85118();

  v2 = sub_268F9AE14();

  v3 = [v8 BOOLForKey_];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v8);
  v4 = v3;
  return v4 & 1;
}

uint64_t *sub_268F85590()
{
  if (qword_280FE4008 != -1)
  {
    swift_once();
  }

  return &qword_280FE8118;
}

uint64_t sub_268F855F0()
{
  type metadata accessor for GetAssistiveTouchHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8118 = result;
  return result;
}

uint64_t sub_268F85658()
{
  v1 = *sub_268F85590();

  return v1;
}

double sub_268F85688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAssistiveTouchHandler handling intent", 40, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBA584();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v19 = v3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268F85BA4, v18, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268F858A0(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4)
{

  v20 = sub_268D374BC();

  sub_268CDD0DC();
  v17 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v19 = v4;
  v21 = [a2 settingMetadata];
  if (v20)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *v19 = sub_268E41954(v21, 0, 0, v15, 0, 0);
  sub_268CD0F7C();
  v9 = sub_268F9B004();

  [v17 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v9);
  v13 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v14 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v6;
  MEMORY[0x277D82BE0](v17);
  sub_268CDD1A4();
  v10 = sub_268F9AE74();
  v11 = v7;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC14(v13, &dword_268CBE000, v14, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v14);

  a3(v17);

  *&result = MEMORY[0x277D82BD8](v17).n128_u64[0];
  return result;
}

uint64_t *sub_268F85BFC()
{
  if (qword_280FE3CB0 != -1)
  {
    swift_once();
  }

  return &qword_280FE80F0;
}

uint64_t sub_268F85C5C()
{
  type metadata accessor for GetPersonalHotspotHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE80F0 = result;
  return result;
}

uint64_t sub_268F85CC4()
{
  v1 = *sub_268F85BFC();

  return v1;
}

uint64_t sub_268F85CF4(void *a1, void (*a2)(void), uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v49 = a1;
  v51 = 0;
  v50 = 0;
  v54 = a1;
  v52 = a2;
  v53 = a3;
  sub_268E53518();
  if (!SettingsFeatureFlagsImpl.isGetSetHotspotEnabled()())
  {
    HIDWORD(v21) = sub_268F9B284();
    v23 = *sub_268DC7AE8();
    v16 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v22 = sub_268F9B734();
    sub_268F9AC14(HIDWORD(v21), &dword_268CBE000, v23, "GetPersonalHotspotHandler handling intent; Siri cannot change setting: Personal Hotspot", 87, 2);

    v17 = sub_268E948B8(17);
    v24 = v18;
    v25 = sub_268E41B70(v17, v18);

    (v48)(v25);

    return v50;
  }

  v41 = sub_268F9B284();
  v43 = *sub_268DC7AE8();
  v3 = v43;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v42 = sub_268F9B734();
  sub_268F9AC14(v41, &dword_268CBE000, v43, "GetPersonalHotspotHandler handling intent", 41, 2);

  v44 = *(v46 + 16);

  v45 = sub_268D370FC();

  if (v45)
  {
    v4 = v50;
    v5 = sub_268DBA4B4();
    v33 = *v5;
    v34 = v5[1];
    v35 = *(v5 + 16);
    v36 = *sub_268DC7AE8();
    v32 = v36;
    v6 = v36;
    v37 = *(v46 + 24);
    v7 = v49;

    v38 = &v21;
    MEMORY[0x28223BE20](v33, v34, v35, v36);
    v20[2] = v8;
    v20[3] = v46;
    v20[4] = v48;
    v20[5] = v9;
    sub_268DB944C(v10, v11, v12, v13, v14, sub_268F86850, v20, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v39 = v4;

    return v39;
  }

  v26 = sub_268F9B294();
  v28 = *sub_268DC7AE8();
  v15 = v28;
  v27 = sub_268F9B734();
  sub_268F9AC14(v26, &dword_268CBE000, v28, "Device doesn't support personal hotspot.", 40, 2);

  sub_268CDD0DC();
  v29 = sub_268CD42AC(6, 0);
  v48();

  return v50;
}

double sub_268F86154(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v59 = a1;
  v58 = a2;
  v56 = a3;
  v57 = a4;
  v55 = a1;
  v4 = sub_268D2E630();
  v42 = SettingIntent.settingIdentifier.getter(v4, &protocol witness table for INGetSettingIntent);
  v43 = v5;

  v54 = 36;
  v41 = BinarySettingIdentifier.rawValue.getter();
  v44 = v6;

  v52[0] = v42;
  v52[1] = v43;
  *&v53 = v41;
  *(&v53 + 1) = v44;
  if (v43)
  {
    sub_268D28874(v52, &v47);
    if (*(&v53 + 1))
    {
      v46 = v47;
      v45 = v53;
      v37 = MEMORY[0x26D62DB50](v47, *(&v47 + 1), v53, *(&v53 + 1));
      sub_268CD9D30(&v45);
      sub_268CD9D30(&v46);
      sub_268CD9D30(v52);
      v38 = v37;
      goto LABEL_7;
    }

    sub_268CD9D30(&v47);
    goto LABEL_9;
  }

  if (*(&v53 + 1))
  {
LABEL_9:
    sub_268D28550(v52);
    v38 = 0;
    goto LABEL_7;
  }

  sub_268CD9D30(v52);
  v38 = 1;
LABEL_7:

  if (v38)
  {

    v36 = sub_268D36DD0();

    if (v36)
    {
      v34 = sub_268E948B8(16);
    }

    else
    {
      v34 = sub_268E948B8(12);
    }

    v35 = v7;
    v48 = v34;
    v49 = v7;

    sub_268D36CE4(1);

    v33 = sub_268E41B70(v34, v35);
    a3();
    MEMORY[0x277D82BD8](v33);
  }

  else
  {

    v32 = sub_268D36D3C();

    if (v32)
    {

      v30 = sub_268D36DD0();

      v31 = v30 ^ 1;
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      v27 = sub_268F9B284();
      v9 = sub_268DC7AE8();
      v28 = *v9;
      MEMORY[0x277D82BE0](*v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14(v27, &dword_268CBE000, v28, "Hotspot already on, making sure it's set to be discoverable", 59, 2);

      MEMORY[0x277D82BD8](v28);

      sub_268D36D78(1);

      v10 = sub_268E948B8(12);
      v29 = sub_268E41B70(v10, v11);

      (a3)(v29);
      MEMORY[0x277D82BD8](v29);
    }

    else
    {
      sub_268CDD0DC();
      v23 = sub_268CD42AC(3, 0);
      v51 = v23;
      sub_268CDD140();
      sub_268F9B734();
      v24 = v12;
      v25 = [a1 settingMetadata];

      v26 = sub_268D36D3C();

      if (v26)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      *v24 = sub_268E41954(v25, 0, 0, v22, 0, 0);
      sub_268CD0F7C();
      v16 = sub_268F9B004();

      [v23 setSettingResponseDatas_];
      MEMORY[0x277D82BD8](v16);
      v20 = sub_268F9B284();
      v13 = sub_268DC7AE8();
      v21 = *v13;
      MEMORY[0x277D82BE0](*v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v19 = v14;
      MEMORY[0x277D82BE0](v23);
      v50 = v23;
      sub_268CDD1A4();
      v17 = sub_268F9AE74();
      v18 = v15;
      v19[3] = MEMORY[0x277D837D0];
      v19[4] = sub_268CDD224();
      *v19 = v17;
      v19[1] = v18;
      sub_268CD0F7C();
      sub_268F9AC14(v20, &dword_268CBE000, v21, "Sending back response %@", 24, 2);

      MEMORY[0x277D82BD8](v21);

      (a3)(v23);

      *&result = MEMORY[0x277D82BD8](v23).n128_u64[0];
    }
  }

  return result;
}

uint64_t *sub_268F868A8()
{
  if (qword_280FE4858 != -1)
  {
    swift_once();
  }

  return &qword_280FE8170;
}

uint64_t sub_268F86908()
{
  type metadata accessor for GetAirplaneModeHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8170 = result;
  return result;
}

uint64_t sub_268F86970()
{
  v1 = *sub_268F868A8();

  return v1;
}

double sub_268F869A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAirplaneModeHandler handling intent", 38, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBA3E4();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v19 = v3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268F86EBC, v18, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268F86BB8(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4)
{

  v20 = sub_268D36960();

  sub_268CDD0DC();
  v17 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v19 = v4;
  v21 = [a2 settingMetadata];
  if (v20)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *v19 = sub_268E41954(v21, 0, 0, v15, 0, 0);
  sub_268CD0F7C();
  v9 = sub_268F9B004();

  [v17 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v9);
  v13 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v14 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v6;
  MEMORY[0x277D82BE0](v17);
  sub_268CDD1A4();
  v10 = sub_268F9AE74();
  v11 = v7;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC14(v13, &dword_268CBE000, v14, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v14);

  a3(v17);

  *&result = MEMORY[0x277D82BD8](v17).n128_u64[0];
  return result;
}

uint64_t *sub_268F86F14()
{
  if (qword_2802DB960 != -1)
  {
    swift_once();
  }

  return &qword_2802F1848;
}

uint64_t sub_268F86F74()
{
  type metadata accessor for SetAutoAnswerHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1848 = result;
  return result;
}

uint64_t sub_268F86FDC()
{
  v1 = *sub_268F86F14();

  return v1;
}

uint64_t sub_268F8700C(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAutoAnswerHandler handling intent", 36, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D3F1D4();

  v4 = sub_268DBCB94();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9 & 1, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268F87230, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F87230, v8);
}

uint64_t sub_268F871C0(char a1)
{

  sub_268D3F244(a1 & 1);
}

uint64_t *sub_268F872B8()
{
  if (qword_2802DB968 != -1)
  {
    swift_once();
  }

  return &qword_2802DE8E0;
}

char *sub_268F87318()
{
  type metadata accessor for SetNumericIntentHandler();
  v3 = sub_268F7AE90();
  v2 = sub_268F8739C();
  v0 = sub_268CDA2FC();
  result = sub_268F873CC(v3, v2, v0);
  qword_2802DE8E0 = result;
  return result;
}

uint64_t sub_268F8739C()
{
  v1 = *sub_268F337EC();

  return v1;
}

uint64_t static SetNumericIntentHandler.shared.getter()
{
  v0 = sub_268F872B8();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268F87458()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents23SetNumericIntentHandler_setHandlerProvider);

  return v2;
}

uint64_t sub_268F87498()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents23SetNumericIntentHandler_confirmationConfigProvider);

  return v2;
}

uint64_t sub_268F874D8()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents23SetNumericIntentHandler_setupHandler);

  return v2;
}

char *sub_268F87518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v11 = a1;
  v10 = a2;
  v9 = a3;

  *OBJC_IVAR____TtC19SiriSettingsIntents23SetNumericIntentHandler_setHandlerProvider = a1;

  *&v12[OBJC_IVAR____TtC19SiriSettingsIntents23SetNumericIntentHandler_confirmationConfigProvider] = a2;

  *&v12[OBJC_IVAR____TtC19SiriSettingsIntents23SetNumericIntentHandler_setupHandler] = a3;
  v8.receiver = v12;
  v8.super_class = type metadata accessor for SetNumericIntentHandler();
  v7 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x277D82BE0](v7);
  v12 = v7;

  MEMORY[0x277D82BD8](v12);
  return v7;
}

uint64_t sub_268F87640(void *a1, void (*a2)(void), uint64_t a3)
{
  v53 = 0;
  v48 = 0;
  v56 = a1;
  v54 = a2;
  v55 = a3;
  v40 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v41 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v40, &dword_268CBE000, v41, "SetNumericIntentHandler selecting setting handler", 49, 2);

  MEMORY[0x277D82BD8](v41);
  sub_268F72BC4(a1);
  if (v52 == 13)
  {
    goto LABEL_12;
  }

  v48 = v52;

  v43[47] = v52;
  sub_268F7C4F0();

  if (!v44[3])
  {
    sub_268D28414(v44);
LABEL_12:
    v11 = sub_268DC7AE8();
    v20 = *v11;
    MEMORY[0x277D82BE0](*v11);
    v19 = sub_268F9B274();
    sub_268F9B734();
    v18 = v12;
    v51 = a1;
    v13 = sub_268D588E0();
    v49 = SettingIntent.settingIdentifier.getter(v13, &protocol witness table for INSetNumericSettingIntent);
    v50 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
    v16 = sub_268F9AE64();
    v17 = v15;
    v18[3] = MEMORY[0x277D837D0];
    v18[4] = sub_268CDD224();
    *v18 = v16;
    v18[1] = v17;
    sub_268CD0F7C();
    sub_268F9AC04("Unable to find a setting handler for setting %@", 47, 2, &dword_268CBE000, v20, v19);

    MEMORY[0x277D82BD8](v20);

    sub_268CDA484();
    v21 = sub_268CD42AC(8, 0);
    a2();
    MEMORY[0x277D82BD8](v21);
  }

  sub_268CDF978(v44, __dst);
  if (sub_268F70A08(a1))
  {
    v36 = v46;
    v35 = v47;
    __swift_project_boxed_opaque_existential_1(__dst, v46);
    v37 = (*(v35 + 16))(v36) ^ 1;
  }

  else
  {
    LOBYTE(v37) = 0;
  }

  if (v37)
  {
    v4 = sub_268DC7AE8();
    v33 = *v4;
    MEMORY[0x277D82BE0](*v4);
    v32 = sub_268F9B294();
    sub_268F9B734();
    v31 = v5;
    MEMORY[0x277D82BE0](a1);
    sub_268D588E0();
    sub_268DCA900();
    v29 = sub_268F9AE74();
    v30 = v6;
    v31[3] = MEMORY[0x277D837D0];
    v31[4] = sub_268CDD224();
    *v31 = v29;
    v31[1] = v30;
    sub_268CD0F7C();
    sub_268F9AC04("Intent in ambiguous and is unsupported: %@", 42, 2, &dword_268CBE000, v33, v32);

    MEMORY[0x277D82BD8](v33);

    sub_268CDA484();
    v34 = sub_268CD42AC(8, 0);
    a2();
    MEMORY[0x277D82BD8](v34);

    return __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    v25 = sub_268F9B284();
    v8 = sub_268DC7AE8();
    v26 = *v8;
    MEMORY[0x277D82BE0](*v8);
    sub_268F9B734();
    v24 = v9;
    sub_268CDE730(__dst, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD768, &unk_268FA56A0);
    v22 = sub_268F9AE64();
    v23 = v10;
    v24[3] = MEMORY[0x277D837D0];
    v24[4] = sub_268CDD224();
    *v24 = v22;
    v24[1] = v23;
    sub_268CD0F7C();
    sub_268F9AC14(v25, &dword_268CBE000, v26, "Setting handler: %@ selected", 28, 2);

    MEMORY[0x277D82BD8](v26);
    v27 = v47;
    __swift_project_boxed_opaque_existential_1(__dst, v46);

    v28 = swift_allocObject();
    *(v28 + 16) = a2;
    *(v28 + 24) = a3;
    (*(v27 + 8))(a1, sub_268F87E7C);

    return __swift_destroy_boxed_opaque_existential_0(__dst);
  }
}

uint64_t sub_268F87CDC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v10 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v4;
  MEMORY[0x277D82BE0](a1);
  sub_268CDA484();
  sub_268EE4A98();
  v7 = sub_268F9AE74();
  v8 = v5;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14(v10, &dword_268CBE000, v11, "Setting handler completed with response: %@", 43, 2);

  MEMORY[0x277D82BD8](v11);

  a2(a1);
}

uint64_t sub_268F87F60(uint64_t a1, void (*a2)(void))
{

  v5 = sub_268F880D0(a1);
  a2();
  MEMORY[0x277D82BD8](v5);
}

id sub_268F880D0(uint64_t a1)
{
  v45 = 0;
  v42 = 0;
  v40 = 0;
  v46 = a1;
  sub_268F72BC4(a1);
  if (v44 == 13 || (v42 = v44, , v41 = v44, sub_268F35CE8(&v41, v47), , memcpy(__dst, v47, sizeof(__dst)), !__dst[3]))
  {
    v18 = sub_268F9B284();
    v8 = sub_268DC7AE8();
    v19 = *v8;
    MEMORY[0x277D82BE0](*v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v17 = v9;
    MEMORY[0x277D82BE0](a1);
    v43 = a1;
    sub_268D588E0();
    sub_268DCA900();
    v15 = sub_268F9AE74();
    v16 = v10;
    v17[3] = MEMORY[0x277D837D0];
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC14(v18, &dword_268CBE000, v19, "Unable to determine current value of a setting from intent: %@", 62, 2);

    MEMORY[0x277D82BD8](v19);
    sub_268CDA484();
    return sub_268CD42AC(2, 0);
  }

  else
  {
    memcpy(v49, __dst, sizeof(v49));
    v1 = sub_268DBF2C4();
    v33 = *v1;
    v31 = v1[1];
    v32 = *(v1 + 16);
    v2 = sub_268DC7AE8();
    v34 = *v2;
    MEMORY[0x277D82BE0](*v2);
    has_malloc_size = _swift_stdlib_has_malloc_size();
    sub_268DB9934(v33, v31, v32, v34, has_malloc_size & 1);
    MEMORY[0x277D82BD8](v34);
    sub_268CDA484();
    v37 = sub_268CD42AC(2, 0);
    v40 = v37;
    sub_268DD26C8();
    sub_268D34FD4();
    v35 = v49[6];

    v5 = v35(v4);
    v36 = sub_268EAE3A8(v5);

    v39 = [v37 oldValue];
    v30 = v39 != 0;
    sub_268D35038(&v39);
    if (v30)
    {
      v29 = [v37 oldValue];
      if (v29)
      {
        v28 = v29;
      }

      else
      {
        LOBYTE(v12) = 2;
        v13 = 85;
        LODWORD(v14) = 0;
        sub_268F9B584();
        __break(1u);
      }

      v26 = [v28 unit];
      MEMORY[0x277D82BD8](v28);
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v20 = sub_268E3E3F0(v36, v27);
    [v37 setOldValue_];
    MEMORY[0x277D82BD8](v20);
    v6 = sub_268DBF2C4();
    v23 = *v6;
    v21 = v6[1];
    v22 = *(v6 + 16);
    v7 = sub_268DC7AE8();
    v24 = *v7;
    MEMORY[0x277D82BE0](*v7);
    sub_268DB9B78(v23, v21, v22, v24);
    MEMORY[0x277D82BD8](v24);
    sub_268F27288();
    return v37;
  }
}

id SetNumericIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetNumericIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *sub_268F88868()
{
  if (qword_280FE6000 != -1)
  {
    swift_once();
  }

  return &qword_280FE6008;
}

uint64_t *sub_268F888C8()
{
  if (qword_2802DB978 != -1)
  {
    swift_once();
  }

  return &qword_2802DE990;
}

uint64_t *sub_268F88928()
{
  if (qword_2802DB980 != -1)
  {
    swift_once();
  }

  return &qword_2802F1850;
}

uint64_t *sub_268F88988()
{
  if (qword_2802DB988 != -1)
  {
    swift_once();
  }

  return &qword_2802F1860;
}

uint64_t sub_268F889E8()
{
  type metadata accessor for SettingsUserDefaultsProvider();
  v0 = sub_268F88A20();
  result = sub_268F85048(v0, v1);
  qword_280FE6008 = result;
  return result;
}

uint64_t static SettingsUserDefaultsProvider.shared.getter()
{
  v1 = *sub_268F88868();

  return v1;
}

uint64_t sub_268F88AFC()
{
  type metadata accessor for NotificationsUserDefaultsProvider();
  v0 = sub_268F88B34();
  result = sub_268F85048(v0, v1);
  qword_2802DE990 = result;
  return result;
}

uint64_t static NotificationsUserDefaultsProvider.shared.getter()
{
  v1 = *sub_268F888C8();

  return v1;
}

uint64_t sub_268F88B9C()
{
  result = sub_268F9AEF4();
  qword_2802F1850 = result;
  qword_2802F1858 = v1;
  return result;
}

uint64_t sub_268F88BE0()
{
  v1 = *sub_268F88928();

  return v1;
}

uint64_t sub_268F88C1C()
{
  result = sub_268F9AEF4();
  qword_2802F1860 = result;
  qword_2802F1868 = v1;
  return result;
}

uint64_t sub_268F88CB0()
{
  v1 = *sub_268F88988();

  return v1;
}

uint64_t *sub_268F88DB8()
{
  if (qword_2802DB990 != -1)
  {
    swift_once();
  }

  return &qword_2802F1870;
}

uint64_t sub_268F88E18()
{
  type metadata accessor for SetNoiseManagementHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1870 = result;
  return result;
}

uint64_t sub_268F88E80()
{
  v1 = *sub_268F88DB8();

  return v1;
}

double sub_268F88F00(void *a1, void (*a2)(void), uint64_t a3)
{
  v84 = 0;
  v87 = a1;
  v85 = a2;
  v86 = a3;
  v59 = [a1 settingMetadata];
  if (v59 && (v55 = [v59 targetDevice], *&v3 = MEMORY[0x277D82BD8](v59).n128_u64[0], v55))
  {
    v52 = [v55 deviceCategory];
    MEMORY[0x277D82BD8](v55);
    v53 = v52;
    v54 = 0;
  }

  else
  {
    v53 = 0;
    v54 = 1;
  }

  v80 = v53;
  v81 = v54 & 1;
  v82 = 6;
  v83 = 0;
  if (v54)
  {
    v51 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory(0);
    sub_268CD7818();
    v51 = sub_268F9AE04();
  }

  if (v51)
  {
    v48 = sub_268F9B294();
    v4 = sub_268DC7AE8();
    v49 = *v4;
    MEMORY[0x277D82BE0](*v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v48, &dword_268CBE000, v49, "SetNoiseManagementHandler invoked on unsupported device.", 56, 2);

    MEMORY[0x277D82BD8](v49);

    sub_268CD795C();
    v50 = sub_268CD42AC(7, 0);
    a2();
    MEMORY[0x277D82BD8](v50);

    return result;
  }

  v6 = [a1 settingMetadata];
  v47 = v6;
  if (v6)
  {
    v42 = [v6 settingId];
    v43 = sub_268F9AE24();
    v44 = v7;
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v42);
    v45 = v43;
    v46 = v44;
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  v79 = 32;
  v40 = BinarySettingIdentifier.rawValue.getter();
  v41 = v8;

  v78[0] = v45;
  v78[1] = v46;
  v76[0] = v40;
  v76[1] = v41;
  sub_268D28874(v78, &v77);
  if (v41)
  {
    sub_268D28874(v76, v61);
    if (*(&v77 + 1))
    {
      v60 = v77;
      v38 = MEMORY[0x26D62DB50](v61[0], v61[1], v77, *(&v77 + 1));
      sub_268CD9D30(&v60);
      sub_268CD9D30(v61);
      sub_268CD9D30(v76);
      v39 = v38;
      goto LABEL_22;
    }

    sub_268CD9D30(v61);
    goto LABEL_24;
  }

  if (*(&v77 + 1))
  {
LABEL_24:
    sub_268D28550(v76);
    v39 = 0;
    goto LABEL_22;
  }

  sub_268CD9D30(v76);
  v39 = 1;
LABEL_22:

  if (v39)
  {

    sub_268F8993C(a1, a2, a3);

    return result;
  }

  v75 = 5;
  v36 = BinarySettingIdentifier.rawValue.getter();
  v37 = v9;

  v74[0] = v45;
  v74[1] = v46;
  v71 = v36;
  v72 = v37;
  sub_268D28874(v74, &v73);
  if (v72)
  {
    sub_268D28874(&v71, v63);
    if (*(&v73 + 1))
    {
      v62 = v73;
      v34 = MEMORY[0x26D62DB50](v63[0], v63[1], v73, *(&v73 + 1));
      sub_268CD9D30(&v62);
      sub_268CD9D30(v63);
      sub_268CD9D30(&v71);
      v35 = v34;
      goto LABEL_33;
    }

    sub_268CD9D30(v63);
    goto LABEL_35;
  }

  if (*(&v73 + 1))
  {
LABEL_35:
    sub_268D28550(&v71);
    v35 = 0;
    goto LABEL_33;
  }

  sub_268CD9D30(&v71);
  v35 = 1;
LABEL_33:

  if (v35)
  {

    sub_268F8A63C(a1, a2, a3);

    return result;
  }

  v70 = 6;
  v32 = BinarySettingIdentifier.rawValue.getter();
  v33 = v10;

  v69[0] = v45;
  v69[1] = v46;
  v66 = v32;
  v67 = v33;
  sub_268D28874(v69, &v68);
  if (v67)
  {
    sub_268D28874(&v66, v65);
    if (*(&v68 + 1))
    {
      v64 = v68;
      v30 = MEMORY[0x26D62DB50](v65[0], v65[1], v68, *(&v68 + 1));
      sub_268CD9D30(&v64);
      sub_268CD9D30(v65);
      sub_268CD9D30(&v66);
      v31 = v30;
      goto LABEL_44;
    }

    sub_268CD9D30(v65);
    goto LABEL_46;
  }

  if (*(&v68 + 1))
  {
LABEL_46:
    sub_268D28550(&v66);
    v31 = 0;
    goto LABEL_44;
  }

  sub_268CD9D30(&v66);
  v31 = 1;
LABEL_44:

  if (v31)
  {

    sub_268F8AFD8(a1, a2, a3);
  }

  else
  {

    v26 = sub_268F9B284();
    v11 = sub_268DC7AE8();
    v27 = *v11;
    MEMORY[0x277D82BE0](*v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v28 = v12;
    v13 = [a1 settingMetadata];
    v29 = v13;
    if (v13)
    {
      v21 = [v13 settingId];
      v22 = sub_268F9AE24();
      v23 = v14;
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v21);
      v24 = v22;
      v25 = v23;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    v65[2] = v24;
    v65[3] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
    v17 = sub_268F9AE64();
    v18 = v15;
    v28[3] = MEMORY[0x277D837D0];
    v28[4] = sub_268CDD224();
    *v28 = v17;
    v28[1] = v18;
    sub_268CD0F7C();
    sub_268F9AC14(v26, &dword_268CBE000, v27, "SetNoiseManagementHandler cannot hanle unsupported setting: %@", 62, 2);

    MEMORY[0x277D82BD8](v27);

    v19 = sub_268E948B8(17);
    v20 = sub_268DAB158(0, v19, v16);

    (a2)(v20);
    MEMORY[0x277D82BD8](v20);
  }

  return result;
}

uint64_t sub_268F8993C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x277D82BE0](a1);

  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = v7;
  sub_268D50278(sub_268F8B0D4, v8);
}

uint64_t sub_268F89A38(unsigned int a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a1;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v47 = "SetNoiseManagementHandler noise cancellation state: %@.";
  v48 = &unk_268FAE850;
  v49 = "SetNoiseManagementHandler failed to read noise cancellation.";
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54, v50, v51, v52);
  v56 = &v29 - v55;
  v63 = v5;
  v61 = v6;
  v62 = v7;
  v60 = v8;
  v59 = v9;
  if (v5 == 2)
  {
    HIDWORD(v29) = sub_268F9B294();
    v31 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v32 = 0;
    v30 = sub_268F9B734();
    sub_268F9AC14(HIDWORD(v29), &dword_268CBE000, v31, v49, 60, 2);

    MEMORY[0x277D82BD8](v31);

    v33 = sub_268DA9A7C(7, v32);
    v50();
    MEMORY[0x277D82BD8](v33);
  }

  else
  {
    v46 = v54;
    v43 = v54;
    v42 = 1;
    v58 = v54 & 1;
    v39 = sub_268F9B284();
    v41 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v41);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v38 = sub_268F9B734();
    v36 = v10;
    v57 = v43 & v42;
    v34 = sub_268F9AE74();
    v35 = v11;
    v36[3] = MEMORY[0x277D837D0];
    v12 = sub_268CDD224();
    v13 = v34;
    v14 = v35;
    v15 = v36;
    v36[4] = v12;
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    v40 = v16;
    sub_268F9AC14(v39, &dword_268CBE000, v41, v47, 55, 2);

    MEMORY[0x277D82BD8](v41);
    v44 = 0;
    v17 = sub_268F9B0E4();
    (*(*(v17 - 8) + 56))(v56, v42);
    MEMORY[0x277D82BE0](v52);

    v18 = swift_allocObject();
    v19 = v42;
    v20 = v43;
    v21 = v52;
    v22 = v53;
    v23 = v50;
    v24 = v51;
    v25 = v44;
    v26 = v56;
    v27 = v48;
    v45 = v18;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v20 & v19;
    *(v18 + 40) = v21;
    *(v18 + 48) = v22;
    *(v18 + 56) = v23;
    *(v18 + 64) = v24;
    sub_268CD3CE0(v25, v25, v26, v27, v18, MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_268F89E64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 80) = a7;
  *(v8 + 72) = a6;
  *(v8 + 64) = a5;
  *(v8 + 113) = a4 & 1;
  *(v8 + 32) = v8;
  *(v8 + 112) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 56) = 0;
  *(v8 + 112) = a4 & 1;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  return MEMORY[0x2822009F8](sub_268F89F00, 0);
}

uint64_t sub_268F89F00()
{
  v6 = *(v0 + 72);
  *(v0 + 32) = v0;
  v1 = sub_268DBE894();
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = *(v6 + 24);

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = *(v0 + 32);
  v2[1] = sub_268F8A05C;
  v3 = *(v0 + 64);
  v4 = *(v0 + 113) & 1;

  return sub_268DA9AE0(v4, v3, v7, v8, v9, v10 & 1, &unk_268FAE860, v6);
}

uint64_t sub_268F8A05C(uint64_t a1)
{
  v4 = *v1;
  v3 = *(*v1 + 72);
  *(v4 + 32) = *v1;
  *(v4 + 104) = a1;

  sub_268CD9A28(&unk_268FAE860, v3);

  return MEMORY[0x2822009F8](sub_268F8A1AC, 0);
}

uint64_t sub_268F8A1AC()
{
  v5 = v0[13];
  v4 = v0[10];
  v0[4] = v0;
  v0[7] = v5;

  v4(v5);

  v1 = MEMORY[0x277D82BD8](v5);
  v2 = *(v0[4] + 8);

  return v2(v1);
}

uint64_t sub_268F8A294(char a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  *(v2 + 65) = a1 & 1;
  *(v2 + 16) = v2;
  *(v2 + 64) = 0;
  *(v2 + 24) = 0;
  *(v2 + 64) = a1 & 1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268F8A2F4, 0);
}

uint64_t sub_268F8A2F4()
{
  v1 = v0[4];
  v0[2] = v0;
  v0[5] = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v5 + 48) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268F8A3C0;
  v3 = *(v5 + 65) & 1;

  return sub_268D4FD50(v3);
}

uint64_t sub_268F8A3C0()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_268F8A568, 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_268F8A568()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268F8A63C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x277D82BE0](a1);

  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = v7;
  sub_268D50818(sub_268F8B0E8, v8);
}

uint64_t sub_268F8A738(unsigned int a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a1;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v47 = "SetNoiseManagementHandler audio transparency state: %@.";
  v48 = &unk_268FAE830;
  v49 = "SetNoiseManagementHandler failed to read audio transparency";
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54, v50, v51, v52);
  v56 = &v29 - v55;
  v63 = v5;
  v61 = v6;
  v62 = v7;
  v60 = v8;
  v59 = v9;
  if (v5 == 2)
  {
    HIDWORD(v29) = sub_268F9B294();
    v31 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v32 = 0;
    v30 = sub_268F9B734();
    sub_268F9AC14(HIDWORD(v29), &dword_268CBE000, v31, v49, 59, 2);

    MEMORY[0x277D82BD8](v31);

    v33 = sub_268DA9A7C(7, v32);
    v50();
    MEMORY[0x277D82BD8](v33);
  }

  else
  {
    v46 = v54;
    v43 = v54;
    v42 = 1;
    v58 = v54 & 1;
    v39 = sub_268F9B284();
    v41 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v41);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v38 = sub_268F9B734();
    v36 = v10;
    v57 = v43 & v42;
    v34 = sub_268F9AE74();
    v35 = v11;
    v36[3] = MEMORY[0x277D837D0];
    v12 = sub_268CDD224();
    v13 = v34;
    v14 = v35;
    v15 = v36;
    v36[4] = v12;
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    v40 = v16;
    sub_268F9AC14(v39, &dword_268CBE000, v41, v47, 55, 2);

    MEMORY[0x277D82BD8](v41);
    v44 = 0;
    v17 = sub_268F9B0E4();
    (*(*(v17 - 8) + 56))(v56, v42);
    MEMORY[0x277D82BE0](v52);

    v18 = swift_allocObject();
    v19 = v42;
    v20 = v43;
    v21 = v52;
    v22 = v53;
    v23 = v50;
    v24 = v51;
    v25 = v44;
    v26 = v56;
    v27 = v48;
    v45 = v18;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v20 & v19;
    *(v18 + 40) = v21;
    *(v18 + 48) = v22;
    *(v18 + 56) = v23;
    *(v18 + 64) = v24;
    sub_268CD3CE0(v25, v25, v26, v27, v18, MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_268F8AB64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 80) = a7;
  *(v8 + 72) = a6;
  *(v8 + 64) = a5;
  *(v8 + 113) = a4 & 1;
  *(v8 + 32) = v8;
  *(v8 + 112) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 56) = 0;
  *(v8 + 112) = a4 & 1;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  return MEMORY[0x2822009F8](sub_268F8AC00, 0);
}

uint64_t sub_268F8AC00()
{
  v6 = *(v0 + 72);
  *(v0 + 32) = v0;
  v1 = sub_268DBEAA4();
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = *(v6 + 24);

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = *(v0 + 32);
  v2[1] = sub_268F8AD5C;
  v3 = *(v0 + 64);
  v4 = *(v0 + 113) & 1;

  return sub_268DA9AE0(v4, v3, v7, v8, v9, v10 & 1, &unk_268FAE840, v6);
}

uint64_t sub_268F8AD5C(uint64_t a1)
{
  v4 = *v1;
  v3 = *(*v1 + 72);
  *(v4 + 32) = *v1;
  *(v4 + 104) = a1;

  sub_268CD9A28(&unk_268FAE840, v3);

  return MEMORY[0x2822009F8](sub_268F8A1AC, 0);
}

uint64_t sub_268F8AEAC(char a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  *(v2 + 65) = a1 & 1;
  *(v2 + 16) = v2;
  *(v2 + 64) = 0;
  *(v2 + 24) = 0;
  *(v2 + 64) = a1 & 1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268F8AF0C, 0);
}

uint64_t sub_268F8AF0C()
{
  v1 = v0[4];
  v0[2] = v0;
  v0[5] = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v5 + 48) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268F8A3C0;
  v3 = *(v5 + 65) & 1;

  return sub_268D505A4(v3);
}

uint64_t sub_268F8AFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x277D82BE0](a1);

  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = v7;
  sub_268D50C3C(sub_268F8B528, v8);
}

uint64_t sub_268F8B0FC(unsigned int a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a1;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v47 = "SetNoiseManagementHandler auto ANC state: %@.";
  v48 = &unk_268FAE810;
  v49 = "SetNoiseManagementHandler failed to read auto ANC";
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54, v50, v51, v52);
  v56 = &v29 - v55;
  v63 = v5;
  v61 = v6;
  v62 = v7;
  v60 = v8;
  v59 = v9;
  if (v5 == 2)
  {
    HIDWORD(v29) = sub_268F9B294();
    v31 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v32 = 0;
    v30 = sub_268F9B734();
    sub_268F9AC14(HIDWORD(v29), &dword_268CBE000, v31, v49, 49, 2);

    MEMORY[0x277D82BD8](v31);

    v33 = sub_268DA9A7C(7, v32);
    v50();
    MEMORY[0x277D82BD8](v33);
  }

  else
  {
    v46 = v54;
    v43 = v54;
    v42 = 1;
    v58 = v54 & 1;
    v39 = sub_268F9B284();
    v41 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v41);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v38 = sub_268F9B734();
    v36 = v10;
    v57 = v43 & v42;
    v34 = sub_268F9AE74();
    v35 = v11;
    v36[3] = MEMORY[0x277D837D0];
    v12 = sub_268CDD224();
    v13 = v34;
    v14 = v35;
    v15 = v36;
    v36[4] = v12;
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    v40 = v16;
    sub_268F9AC14(v39, &dword_268CBE000, v41, v47, 45, 2);

    MEMORY[0x277D82BD8](v41);
    v44 = 0;
    v17 = sub_268F9B0E4();
    (*(*(v17 - 8) + 56))(v56, v42);
    MEMORY[0x277D82BE0](v52);

    v18 = swift_allocObject();
    v19 = v42;
    v20 = v43;
    v21 = v52;
    v22 = v53;
    v23 = v50;
    v24 = v51;
    v25 = v44;
    v26 = v56;
    v27 = v48;
    v45 = v18;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v20 & v19;
    *(v18 + 40) = v21;
    *(v18 + 48) = v22;
    *(v18 + 56) = v23;
    *(v18 + 64) = v24;
    sub_268CD3CE0(v25, v25, v26, v27, v18, MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_268F8B53C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 80) = a7;
  *(v8 + 72) = a6;
  *(v8 + 64) = a5;
  *(v8 + 113) = a4 & 1;
  *(v8 + 32) = v8;
  *(v8 + 112) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 56) = 0;
  *(v8 + 112) = a4 & 1;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  return MEMORY[0x2822009F8](sub_268F8B5D8, 0);
}

uint64_t sub_268F8B5D8()
{
  v6 = *(v0 + 72);
  *(v0 + 32) = v0;
  v1 = sub_268DBEB74();
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = *(v6 + 24);

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = *(v0 + 32);
  v2[1] = sub_268F8B734;
  v3 = *(v0 + 64);
  v4 = *(v0 + 113) & 1;

  return sub_268DA9AE0(v4, v3, v7, v8, v9, v10 & 1, &unk_268FAE820, v6);
}

uint64_t sub_268F8B734(uint64_t a1)
{
  v4 = *v1;
  v3 = *(*v1 + 72);
  *(v4 + 32) = *v1;
  *(v4 + 104) = a1;

  sub_268CD9A28(&unk_268FAE820, v3);

  return MEMORY[0x2822009F8](sub_268F8A1AC, 0);
}

uint64_t sub_268F8B884(char a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  *(v2 + 65) = a1 & 1;
  *(v2 + 16) = v2;
  *(v2 + 64) = 0;
  *(v2 + 24) = 0;
  *(v2 + 64) = a1 & 1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268F8B8E4, 0);
}

uint64_t sub_268F8B8E4()
{
  v1 = v0[4];
  v0[2] = v0;
  v0[5] = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v5 + 48) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268F8A3C0;
  v3 = *(v5 + 65) & 1;

  return sub_268D509C8(v3);
}

uint64_t sub_268F8B9B0(uint64_t a1)
{
  v2[40] = v1;
  v2[39] = a1;
  v2[34] = v2;
  v2[35] = 0;
  v2[36] = 0;
  v2[35] = a1;
  v2[36] = v1;
  return MEMORY[0x2822009F8](sub_268F8BA08, 0);
}

uint64_t sub_268F8BA08()
{
  v1 = *(v0 + 312);
  *(v0 + 272) = v0;
  v57 = [v1 settingMetadata];
  if (v57 && (v55 = [v57 targetDevice], *&v2 = MEMORY[0x277D82BD8](v57).n128_u64[0], v55))
  {
    v52 = [v55 deviceCategory];
    MEMORY[0x277D82BD8](v55);
    v53 = v52;
    v54 = 0;
  }

  else
  {
    v53 = 0;
    v54 = 1;
  }

  if ((v54 & 1) == 0)
  {
    *(v56 + 296) = v53;
    *(v56 + 304) = 6;
    type metadata accessor for INDeviceCategory(0);
    sub_268CD7818();
    v3 = sub_268F9AE04();
    if (v3)
    {
      v49 = sub_268F9B294();
      v4 = sub_268DC7AE8();
      v50 = *v4;
      MEMORY[0x277D82BE0](*v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14(v49, &dword_268CBE000, v50, "SetNoiseManagementHandler invoked on unsupported device.", 56, 2);

      MEMORY[0x277D82BD8](v50);
      v51 = sub_268DA9A7C(7, 0);
LABEL_58:
      v20 = *(*(v56 + 272) + 8);

      return v20(v51);
    }
  }

  v48 = [*(v56 + 312) settingMetadata];
  if (v48)
  {
    v43 = [v48 settingId];
    v44 = sub_268F9AE24();
    v45 = v5;
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v43);
    v46 = v44;
    v47 = v45;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  *(v56 + 328) = v47;

  v41 = BinarySettingIdentifier.rawValue.getter();
  v42 = v6;

  *(v56 + 112) = v46;
  *(v56 + 120) = v47;
  *(v56 + 16) = v41;
  *(v56 + 24) = v42;
  sub_268D28874((v56 + 112), (v56 + 32));
  if (!*(v56 + 24))
  {
    if (!*(v56 + 40))
    {
      sub_268CD9D30(v56 + 16);

      goto LABEL_24;
    }

LABEL_22:
    sub_268D28550(v56 + 16);

    goto LABEL_27;
  }

  sub_268D28874((v56 + 16), (v56 + 240));
  if (!*(v56 + 40))
  {
    sub_268CD9D30(v56 + 240);
    goto LABEL_22;
  }

  *(v56 + 256) = *(v56 + 32);
  v40 = MEMORY[0x26D62DB50](*(v56 + 240), *(v56 + 248), *(v56 + 256), *(v56 + 264));
  sub_268CD9D30(v56 + 256);
  sub_268CD9D30(v56 + 240);
  sub_268CD9D30(v56 + 16);

  if ((v40 & 1) == 0)
  {
LABEL_27:

    v38 = BinarySettingIdentifier.rawValue.getter();
    v39 = v10;

    *(v56 + 128) = v46;
    *(v56 + 136) = v47;
    *(v56 + 48) = v38;
    *(v56 + 56) = v39;
    sub_268D28874((v56 + 128), (v56 + 64));
    if (*(v56 + 56))
    {
      sub_268D28874((v56 + 48), (v56 + 208));
      if (*(v56 + 72))
      {
        *(v56 + 224) = *(v56 + 64);
        v37 = MEMORY[0x26D62DB50](*(v56 + 208), *(v56 + 216), *(v56 + 224), *(v56 + 232));
        sub_268CD9D30(v56 + 224);
        sub_268CD9D30(v56 + 208);
        sub_268CD9D30(v56 + 48);

        if ((v37 & 1) == 0)
        {
LABEL_40:

          v35 = BinarySettingIdentifier.rawValue.getter();
          v36 = v13;

          *(v56 + 144) = v46;
          *(v56 + 152) = v47;
          *(v56 + 80) = v35;
          *(v56 + 88) = v36;
          sub_268D28874((v56 + 144), (v56 + 96));
          if (*(v56 + 88))
          {
            sub_268D28874((v56 + 80), (v56 + 176));
            if (*(v56 + 104))
            {
              *(v56 + 192) = *(v56 + 96);
              v34 = MEMORY[0x26D62DB50](*(v56 + 176), *(v56 + 184), *(v56 + 192), *(v56 + 200));
              sub_268CD9D30(v56 + 192);
              sub_268CD9D30(v56 + 176);
              sub_268CD9D30(v56 + 80);

              if ((v34 & 1) == 0)
              {
LABEL_53:
                v31 = *(v56 + 312);

                v29 = sub_268F9B284();
                v16 = sub_268DC7AE8();
                v30 = *v16;
                MEMORY[0x277D82BE0](*v16);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
                sub_268F9B734();
                v32 = v17;
                v33 = [v31 settingMetadata];
                if (v33)
                {
                  v24 = [v33 settingId];
                  v25 = sub_268F9AE24();
                  v26 = v18;
                  MEMORY[0x277D82BD8](v33);
                  MEMORY[0x277D82BD8](v24);
                  v27 = v25;
                  v28 = v26;
                }

                else
                {
                  v27 = 0;
                  v28 = 0;
                }

                *(v56 + 160) = v27;
                *(v56 + 168) = v28;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
                v21 = sub_268F9AE64();
                v22 = v19;
                v32[3] = MEMORY[0x277D837D0];
                v32[4] = sub_268CDD224();
                *v32 = v21;
                v32[1] = v22;
                sub_268CD0F7C();
                sub_268F9AC14(v29, &dword_268CBE000, v30, "SetNoiseManagementHandler cannot hanle unsupported setting: %@", 62, 2);

                MEMORY[0x277D82BD8](v30);
                v23 = sub_268DA9A7C(7, 0);

                v51 = v23;
                goto LABEL_58;
              }

              goto LABEL_50;
            }

            sub_268CD9D30(v56 + 176);
          }

          else if (!*(v56 + 104))
          {
            sub_268CD9D30(v56 + 80);

LABEL_50:

            v14 = swift_task_alloc();
            *(v56 + 368) = v14;
            *v14 = *(v56 + 272);
            v14[1] = sub_268F8CB34;
            v15 = *(v56 + 312);

            return sub_268F8DC6C(v15);
          }

          sub_268D28550(v56 + 80);

          goto LABEL_53;
        }

        goto LABEL_37;
      }

      sub_268CD9D30(v56 + 208);
    }

    else if (!*(v56 + 72))
    {
      sub_268CD9D30(v56 + 48);

LABEL_37:

      v11 = swift_task_alloc();
      *(v56 + 352) = v11;
      *v11 = *(v56 + 272);
      v11[1] = sub_268F8C97C;
      v12 = *(v56 + 312);

      return sub_268F8D4AC(v12);
    }

    sub_268D28550(v56 + 48);

    goto LABEL_40;
  }

LABEL_24:

  v7 = swift_task_alloc();
  *(v56 + 336) = v7;
  *v7 = *(v56 + 272);
  v7[1] = sub_268F8C7C4;
  v8 = *(v56 + 312);

  return sub_268F8CCEC(v8);
}

uint64_t sub_268F8C7C4(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 272) = *v1;
  *(v3 + 344) = a1;

  return MEMORY[0x2822009F8](sub_268F8C8E0, 0);
}

uint64_t sub_268F8C8E0()
{
  *(v0 + 272) = v0;

  v1 = *(v0 + 344);
  v2 = *(*(v0 + 272) + 8);

  return v2(v1);
}

uint64_t sub_268F8C97C(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 272) = *v1;
  *(v3 + 360) = a1;

  return MEMORY[0x2822009F8](sub_268F8CA98, 0);
}

uint64_t sub_268F8CA98()
{
  *(v0 + 272) = v0;

  v1 = *(v0 + 360);
  v2 = *(*(v0 + 272) + 8);

  return v2(v1);
}

uint64_t sub_268F8CB34(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 272) = *v1;
  *(v3 + 376) = a1;

  return MEMORY[0x2822009F8](sub_268F8CC50, 0);
}

uint64_t sub_268F8CC50()
{
  *(v0 + 272) = v0;

  v1 = *(v0 + 376);
  v2 = *(*(v0 + 272) + 8);

  return v2(v1);
}

uint64_t sub_268F8CCEC(uint64_t a1)
{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_268F8CD44, 0);
}

uint64_t sub_268F8CD44()
{
  v1 = v0[6];
  v0[2] = v0;
  v0[7] = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v4 + 64) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268F8CE00;

  return sub_268D50304();
}

uint64_t sub_268F8CE00(char a1)
{
  v3 = *v1;
  *(v3 + 16) = *v1;
  *(v3 + 82) = a1;

  return MEMORY[0x2822009F8](sub_268F8CF3C, 0);
}

uint64_t sub_268F8CF3C(uint64_t a1)
{
  v2 = *(v1 + 82);
  *(v1 + 16) = v1;
  *(v1 + 80) = v2;
  if (v2 == 2)
  {
    v13 = sub_268F9B294();
    v10 = sub_268DC7AE8();
    v14 = *v10;
    MEMORY[0x277D82BE0](*v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v13, &dword_268CBE000, v14, "SetNoiseManagementHandler failed to read noise cancellation.", 60, 2);

    MEMORY[0x277D82BD8](v14);
    v11 = sub_268DA9A7C(7, 0);
    v12 = *(*(v26 + 16) + 8);

    return v12(v11);
  }

  else
  {
    v21 = *(v26 + 82);
    v20 = *(v26 + 48);
    *(v26 + 88) = v21 & 1;
    v18 = sub_268F9B284();
    v3 = sub_268DC7AE8();
    v19 = *v3;
    MEMORY[0x277D82BE0](*v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v17 = v4;
    *(v26 + 81) = v21 & 1;
    v15 = sub_268F9AE74();
    v16 = v5;
    v17[3] = MEMORY[0x277D837D0];
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC14(v18, &dword_268CBE000, v19, "SetNoiseManagementHandler noise cancellation state: %@.", 55, 2);

    MEMORY[0x277D82BD8](v19);
    v6 = sub_268DBE894();
    v22 = *v6;
    v23 = v6[1];
    v24 = *(v6 + 16);
    v25 = *(v20 + 24);

    v7 = swift_task_alloc();
    *(v26 + 72) = v7;
    *v7 = *(v26 + 16);
    v7[1] = sub_268F8D30C;
    v8 = *(v26 + 40);

    return sub_268DA9AE0(v21 & 1, v8, v22, v23, v24, v25 & 1, &unk_268FAE768, v20);
  }
}

uint64_t sub_268F8D30C(uint64_t a1)
{
  v5 = *v1;
  v4 = *(*v1 + 48);
  *(v5 + 16) = *v1;

  sub_268CD9A28(&unk_268FAE768, v4);
  v2 = *(*(v5 + 16) + 8);

  return v2(a1);
}

uint64_t sub_268F8D4AC(uint64_t a1)
{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_268F8D504, 0);
}

uint64_t sub_268F8D504()
{
  v1 = v0[6];
  v0[2] = v0;
  v0[7] = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v4 + 64) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268F8D5C0;

  return sub_268D508A4();
}

uint64_t sub_268F8D5C0(char a1)
{
  v3 = *v1;
  *(v3 + 16) = *v1;
  *(v3 + 82) = a1;

  return MEMORY[0x2822009F8](sub_268F8D6FC, 0);
}

uint64_t sub_268F8D6FC(uint64_t a1)
{
  v2 = *(v1 + 82);
  *(v1 + 16) = v1;
  *(v1 + 80) = v2;
  if (v2 == 2)
  {
    v13 = sub_268F9B294();
    v10 = sub_268DC7AE8();
    v14 = *v10;
    MEMORY[0x277D82BE0](*v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v13, &dword_268CBE000, v14, "SetNoiseManagementHandler failed to read audio transparency", 59, 2);

    MEMORY[0x277D82BD8](v14);
    v11 = sub_268DA9A7C(7, 0);
    v12 = *(*(v26 + 16) + 8);

    return v12(v11);
  }

  else
  {
    v21 = *(v26 + 82);
    v20 = *(v26 + 48);
    *(v26 + 88) = v21 & 1;
    v18 = sub_268F9B284();
    v3 = sub_268DC7AE8();
    v19 = *v3;
    MEMORY[0x277D82BE0](*v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v17 = v4;
    *(v26 + 81) = v21 & 1;
    v15 = sub_268F9AE74();
    v16 = v5;
    v17[3] = MEMORY[0x277D837D0];
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC14(v18, &dword_268CBE000, v19, "SetNoiseManagementHandler audio transparency state: %@.", 55, 2);

    MEMORY[0x277D82BD8](v19);
    v6 = sub_268DBEAA4();
    v22 = *v6;
    v23 = v6[1];
    v24 = *(v6 + 16);
    v25 = *(v20 + 24);

    v7 = swift_task_alloc();
    *(v26 + 72) = v7;
    *v7 = *(v26 + 16);
    v7[1] = sub_268F8DACC;
    v8 = *(v26 + 40);

    return sub_268DA9AE0(v21 & 1, v8, v22, v23, v24, v25 & 1, &unk_268FAE778, v20);
  }
}

uint64_t sub_268F8DACC(uint64_t a1)
{
  v5 = *v1;
  v4 = *(*v1 + 48);
  *(v5 + 16) = *v1;

  sub_268CD9A28(&unk_268FAE778, v4);
  v2 = *(*(v5 + 16) + 8);

  return v2(a1);
}

uint64_t sub_268F8DC6C(uint64_t a1)
{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_268F8DCC4, 0);
}

uint64_t sub_268F8DCC4()
{
  v1 = v0[6];
  v0[2] = v0;
  v0[7] = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v4 + 64) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268F8DD80;

  return sub_268D50CC8();
}

uint64_t sub_268F8DD80(char a1)
{
  v3 = *v1;
  *(v3 + 16) = *v1;
  *(v3 + 82) = a1;

  return MEMORY[0x2822009F8](sub_268F8DEBC, 0);
}

uint64_t sub_268F8DEBC(uint64_t a1)
{
  v2 = *(v1 + 82);
  *(v1 + 16) = v1;
  *(v1 + 80) = v2;
  if (v2 == 2)
  {
    v13 = sub_268F9B294();
    v10 = sub_268DC7AE8();
    v14 = *v10;
    MEMORY[0x277D82BE0](*v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v13, &dword_268CBE000, v14, "SetNoiseManagementHandler failed to read auto ANC", 49, 2);

    MEMORY[0x277D82BD8](v14);
    v11 = sub_268DA9A7C(7, 0);
    v12 = *(*(v26 + 16) + 8);

    return v12(v11);
  }

  else
  {
    v21 = *(v26 + 82);
    v20 = *(v26 + 48);
    *(v26 + 88) = v21 & 1;
    v18 = sub_268F9B284();
    v3 = sub_268DC7AE8();
    v19 = *v3;
    MEMORY[0x277D82BE0](*v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v17 = v4;
    *(v26 + 81) = v21 & 1;
    v15 = sub_268F9AE74();
    v16 = v5;
    v17[3] = MEMORY[0x277D837D0];
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC14(v18, &dword_268CBE000, v19, "SetNoiseManagementHandler auto ANC state: %@.", 45, 2);

    MEMORY[0x277D82BD8](v19);
    v6 = sub_268DBEB74();
    v22 = *v6;
    v23 = v6[1];
    v24 = *(v6 + 16);
    v25 = *(v20 + 24);

    v7 = swift_task_alloc();
    *(v26 + 72) = v7;
    *v7 = *(v26 + 16);
    v7[1] = sub_268F8E28C;
    v8 = *(v26 + 40);

    return sub_268DA9AE0(v21 & 1, v8, v22, v23, v24, v25 & 1, &unk_268FAE788, v20);
  }
}

uint64_t sub_268F8E28C(uint64_t a1)
{
  v5 = *v1;
  v4 = *(*v1 + 48);
  *(v5 + 16) = *v1;

  sub_268CD9A28(&unk_268FAE788, v4);
  v2 = *(*(v5 + 16) + 8);

  return v2(a1);
}

uint64_t sub_268F8E42C(char a1)
{
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = *(v1 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268F8A294(a1 & 1, v4);
}

uint64_t sub_268F8E4EC(char a1)
{
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = *(v1 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268F8AEAC(a1 & 1, v4);
}

uint64_t sub_268F8E5AC(char a1)
{
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = *(v1 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268F8B884(a1 & 1, v4);
}

uint64_t sub_268F8E6B4(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268D82A48;

  return sub_268F8B9B0(a1);
}

uint64_t sub_268F8E76C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7B50;

  return sub_268F8B53C(a1, v6, v7, v8 & 1, v9, v10, v11, v12);
}

uint64_t sub_268F8E878(char a1)
{
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = *(v1 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268F8B884(a1 & 1, v4);
}

uint64_t sub_268F8E938(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7B50;

  return sub_268F8AB64(a1, v6, v7, v8 & 1, v9, v10, v11, v12);
}

uint64_t sub_268F8EA44(char a1)
{
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = *(v1 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268F8AEAC(a1 & 1, v4);
}

uint64_t sub_268F8EB04(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7B50;

  return sub_268F89E64(a1, v6, v7, v8 & 1, v9, v10, v11, v12);
}

uint64_t sub_268F8EC10(char a1)
{
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = *(v1 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268F8A294(a1 & 1, v4);
}

uint64_t sub_268F8ECD0(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "SetNumericSettingIntent#ConfirmMaximumVolume";
  *(v2 + 8) = 44;
  *(v2 + 16) = 2;
  *(v2 + 24) = "SetNumericSettingIntent#RetainingCurrentNumericValue";
  *(v2 + 32) = 52;
  *(v2 + 40) = 2;
  *(v2 + 48) = "SetNumericSettingIntent#NoNeedToChangeNumericValueTo";
  *(v2 + 56) = 52;
  *(v2 + 64) = 2;
  *(v2 + 72) = "SetNumericSettingIntent#UnspecifiedActionForSupportedNumericSetting";
  *(v2 + 80) = 67;
  *(v2 + 88) = 2;
  *(v2 + 96) = "SetNumericSettingIntent#ConfirmDisableSmartVolume";
  *(v2 + 104) = 49;
  *(v2 + 112) = 2;
  *(v2 + 120) = "SetNumericSettingIntent#ChangedNumericValueToSpokenOnly";
  *(v2 + 128) = 55;
  *(v2 + 136) = 2;
  *(v2 + 144) = "SetNumericSettingIntent#ChangedNumericValueTo";
  *(v2 + 152) = 45;
  *(v2 + 160) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_16:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_16;
    case 2:
      v5 = 2;
      goto LABEL_16;
    case 3:
      v5 = 3;
      goto LABEL_16;
    case 4:
      v5 = 4;
      goto LABEL_16;
    case 5:
      v5 = 5;
      goto LABEL_16;
    case 6:
      v5 = 6;
      goto LABEL_16;
  }

  return 7;
}

unint64_t sub_268F8F174()
{
  v2 = qword_2802DE998;
  if (!qword_2802DE998)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE998);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F8F2C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268F8ECD0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268F8F2F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268F8EF6C(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268F8F32C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9AA44();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters(uint64_t a1)
{
  v2 = qword_2802DE9A0;
  if (!qword_2802DE9A0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F8F4F0(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 28)));
  return sub_268D28588(v11);
}

uint64_t sub_268F8F5A0()
{
  v60 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v54 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v55 = v38 - v54;
  v60 = v0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v57 = sub_268F9B734();
  v58 = v5;
  v6 = sub_268F9AEF4();
  v7 = v58;
  *v58 = v6;
  v7[1] = v8;
  v59 = *v0;

  if (v59)
  {
    v52 = v59;
    v51 = v59;
    v9 = type metadata accessor for SettingsNumericSettingAction();
    v10 = v58;
    v11 = v51;
    v58[5] = v9;
    v10[2] = v11;
  }

  else
  {
    v37 = v58;
    v58[2] = 0;
    v37[3] = 0;
    v37[4] = 0;
    v37[5] = 0;
  }

  v12 = sub_268F9AEF4();
  v13 = v58;
  v14 = v53;
  v58[6] = v12;
  v13[7] = v15;
  v50 = *(v14 + 8);

  if (v50)
  {
    v49 = v50;
    v48 = v50;
    v16 = sub_268F9AA44();
    v17 = v58;
    v18 = v48;
    v58[11] = v16;
    v17[8] = v18;
  }

  else
  {
    v36 = v58;
    v58[8] = 0;
    v36[9] = 0;
    v36[10] = 0;
    v36[11] = 0;
  }

  v19 = sub_268F9AEF4();
  v20 = v58;
  v21 = v53;
  v58[12] = v19;
  v20[13] = v22;
  v47 = *(v21 + 16);

  if (v47)
  {
    v46 = v47;
    v45 = v47;
    v23 = type metadata accessor for SettingsNumericSetting(0);
    v24 = v58;
    v25 = v45;
    v58[17] = v23;
    v24[14] = v25;
  }

  else
  {
    v35 = v58;
    v58[14] = 0;
    v35[15] = 0;
    v35[16] = 0;
    v35[17] = 0;
  }

  v39 = v58 + 20;
  v41 = 1;
  v26 = sub_268F9AEF4();
  v27 = v58;
  v58[18] = v26;
  v27[19] = v28;
  v40 = 0;
  v29 = type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters(0);
  sub_268D2A1F0((v53 + *(v29 + 28)), v55);
  v42 = sub_268F9A9C4();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  if ((*(v43 + 48))(v55, v41) == 1)
  {
    sub_268D28588(v55);
    v34 = v58;
    v58[20] = 0;
    v34[21] = 0;
    v34[22] = 0;
    v34[23] = 0;
  }

  else
  {
    v30 = v39;
    v58[23] = v42;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v43 + 32))(boxed_opaque_existential_1, v55, v42);
  }

  sub_268CD0F7C();
  v38[1] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268F8F948@<X0>(char *a1@<X8>)
{
  v12 = a1;
  v13 = 0;
  v8 = 0;
  v9 = (*(*(type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v4 = &v8 - v9;
  v11 = v4;
  v13 = &v8 - v9;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  v10 = *(v5 + 28);
  v6 = sub_268F9A9C4();
  (*(*(v6 - 8) + 56))(&v11[v10], 1);
  return sub_268F96EA4(v11, v12);
}

uint64_t type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters(uint64_t a1)
{
  v2 = qword_2802DE9B0;
  if (!qword_2802DE9B0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F8FAE4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 36)));
  return sub_268D28588(v11);
}

uint64_t sub_268F8FB94()
{
  v71 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v64 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v65 = v47 - v64;
  v71 = v0;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v68 = 6;
  v67 = sub_268F9B734();
  v69 = v5;
  v6 = sub_268F9AEF4();
  v7 = v69;
  *v69 = v6;
  v7[1] = v8;
  v70 = *v0;

  if (v70)
  {
    v62 = v70;
    v61 = v70;
    v9 = type metadata accessor for SettingsNumericSettingAction();
    v10 = v69;
    v11 = v61;
    v69[5] = v9;
    v10[2] = v11;
  }

  else
  {
    v46 = v69;
    v69[2] = 0;
    v46[3] = 0;
    v46[4] = 0;
    v46[5] = 0;
  }

  v12 = sub_268F9AEF4();
  v13 = v69;
  v14 = v63;
  v69[6] = v12;
  v13[7] = v15;
  v60 = *(v14 + 8);

  if (v60)
  {
    v59 = v60;
    v58 = v60;
    v16 = sub_268F9AA44();
    v17 = v69;
    v18 = v58;
    v69[11] = v16;
    v17[8] = v18;
  }

  else
  {
    v45 = v69;
    v69[8] = 0;
    v45[9] = 0;
    v45[10] = 0;
    v45[11] = 0;
  }

  v19 = sub_268F9AEF4();
  v20 = v69;
  v21 = v63;
  v69[12] = v19;
  v20[13] = v22;
  v57 = *(v21 + 16);

  if (v57)
  {
    v56 = v57;
    v55 = v57;
    v23 = type metadata accessor for SettingsNumericSetting(0);
    v24 = v69;
    v25 = v55;
    v69[17] = v23;
    v24[14] = v25;
  }

  else
  {
    v44 = v69;
    v69[14] = 0;
    v44[15] = 0;
    v44[16] = 0;
    v44[17] = 0;
  }

  v51 = 1;
  v26 = sub_268F9AEF4();
  v27 = v69;
  v28 = v63;
  v69[18] = v26;
  v27[19] = v29;
  LOBYTE(v28) = *(v28 + 24);
  v48 = MEMORY[0x277D839B0];
  v27[23] = MEMORY[0x277D839B0];
  *(v27 + 160) = v28;
  v30 = sub_268F9AEF4();
  v31 = v48;
  v32 = v69;
  v33 = v63;
  v69[24] = v30;
  v32[25] = v34;
  LOBYTE(v33) = *(v33 + 25);
  v32[29] = v31;
  *(v32 + 208) = v33;
  v49 = v32 + 32;
  v35 = sub_268F9AEF4();
  v36 = v69;
  v69[30] = v35;
  v36[31] = v37;
  v50 = 0;
  v38 = type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters(0);
  sub_268D2A1F0((v63 + *(v38 + 36)), v65);
  v52 = sub_268F9A9C4();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  if ((*(v53 + 48))(v65, v51) == 1)
  {
    sub_268D28588(v65);
    v43 = v69;
    v69[32] = 0;
    v43[33] = 0;
    v43[34] = 0;
    v43[35] = 0;
  }

  else
  {
    v39 = v49;
    v69[35] = v52;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    (*(v53 + 32))(boxed_opaque_existential_1, v65, v52);
  }

  sub_268CD0F7C();
  v47[1] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

void *sub_268F8FFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, const void *a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 25) = a5;
  v7 = type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters(0);
  return sub_268D84F40(a6, (a7 + *(v7 + 36)));
}

uint64_t sub_268F90040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsNumericSettingAction();
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = sub_268F9AA44();
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;

  if (a3)
  {
    v10[17] = type metadata accessor for SettingsNumericSetting(0);
    v10[14] = a3;
  }

  else
  {
    v10[14] = 0;
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t sub_268F9033C(uint64_t a1, __int16 a2)
{
  v8 = a2;
  v9 = HIBYTE(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v2;
  *v2 = sub_268F9AEF4();
  v10[1] = v3;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsNumericSettingAction();
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v4;
  v7 = MEMORY[0x277D839B0];
  v10[11] = MEMORY[0x277D839B0];
  *(v10 + 64) = v8;
  v10[12] = sub_268F9AEF4();
  v10[13] = v5;
  v10[17] = v7;
  *(v10 + 112) = v9;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters(uint64_t a1)
{
  v2 = qword_2802DE9C0;
  if (!qword_2802DE9C0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F905CC(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 28)));
  return sub_268D28588(v11);
}

uint64_t sub_268F906B4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 32)));
  return sub_268D28588(v11);
}

uint64_t sub_268F9079C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 36)));
  return sub_268D28588(v11);
}

uint64_t sub_268F90870(unsigned int a1)
{
  v2 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters(0);
  result = a1;
  *(v1 + *(v2 + 40)) = a1;
  return result;
}

uint64_t sub_268F908E0(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 44)));
  return sub_268D28588(v11);
}

uint64_t sub_268F90990()
{
  v71 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v65 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v66 = v47 - v65;
  v71 = v0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v68 = sub_268F9B734();
  v69 = v5;
  v6 = sub_268F9AEF4();
  v7 = v69;
  *v69 = v6;
  v7[1] = v8;
  v70 = *v0;

  if (v70)
  {
    v63 = v70;
    v62 = v70;
    v9 = type metadata accessor for SettingsNumericSettingAction();
    v10 = v69;
    v11 = v62;
    v69[5] = v9;
    v10[2] = v11;
  }

  else
  {
    v46 = v69;
    v69[2] = 0;
    v46[3] = 0;
    v46[4] = 0;
    v46[5] = 0;
  }

  v12 = sub_268F9AEF4();
  v13 = v69;
  v14 = v64;
  v69[6] = v12;
  v13[7] = v15;
  v61 = *(v14 + 8);

  if (v61)
  {
    v60 = v61;
    v59 = v61;
    v16 = sub_268F9AA44();
    v17 = v69;
    v18 = v59;
    v69[11] = v16;
    v17[8] = v18;
  }

  else
  {
    v45 = v69;
    v69[8] = 0;
    v45[9] = 0;
    v45[10] = 0;
    v45[11] = 0;
  }

  v19 = sub_268F9AEF4();
  v20 = v69;
  v21 = v64;
  v69[12] = v19;
  v20[13] = v22;
  v58 = *(v21 + 16);

  if (v58)
  {
    v57 = v58;
    v56 = v58;
    v23 = type metadata accessor for SettingsNumericSetting(0);
    v24 = v69;
    v25 = v56;
    v69[17] = v23;
    v24[14] = v25;
  }

  else
  {
    v44 = v69;
    v69[14] = 0;
    v44[15] = 0;
    v44[16] = 0;
    v44[17] = 0;
  }

  v26 = sub_268F9AEF4();
  v27 = v69;
  v69[18] = v26;
  v27[19] = v28;
  v54 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters(0);
  v55 = *(v64 + *(v54 + 40));
  if (v55 == 2)
  {
    v43 = v69;
    v69[20] = 0;
    v43[21] = 0;
    v43[22] = 0;
    v43[23] = 0;
  }

  else
  {
    v53 = v55;
    v29 = v69;
    v30 = v55;
    v69[23] = MEMORY[0x277D839B0];
    *(v29 + 160) = v30 & 1;
  }

  v48 = v69 + 26;
  v49 = 1;
  v31 = sub_268F9AEF4();
  v32 = v69;
  v33 = v54;
  v34 = v64;
  v36 = v35;
  v37 = v66;
  v69[24] = v31;
  v32[25] = v36;
  sub_268D2A1F0((v34 + *(v33 + 44)), v37);
  v50 = sub_268F9A9C4();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  if ((*(v51 + 48))(v66, v49) == 1)
  {
    sub_268D28588(v66);
    v42 = v69;
    v69[26] = 0;
    v42[27] = 0;
    v42[28] = 0;
    v42[29] = 0;
  }

  else
  {
    v38 = v48;
    v69[29] = v50;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
    (*(v51 + 32))(boxed_opaque_existential_1, v66, v50);
  }

  sub_268CD0F7C();
  v47[1] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268F90DCC@<X0>(char *a1@<X8>)
{
  v22 = a1;
  v23 = 0;
  v13[1] = 0;
  v16 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters(0);
  v14 = (*(*(v16 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v4 = v13 - v14;
  v21 = v4;
  v23 = v13 - v14;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  v15 = *(v5 + 28);
  v18 = sub_268F9A9C4();
  v6 = *(v18 - 8);
  v20 = *(v6 + 56);
  v19 = v6 + 56;
  v17 = 1;
  v20(&v21[v15], 1);
  (v20)(&v21[v16[8]], v17, v17, v18);
  (v20)(&v21[v16[9]], v17, v17, v18);
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v20;
  v11 = v21;
  v21[v16[10]] = 2;
  (v10)(&v11[v7[11]], v8, v8, v9);
  return sub_268F96A08(v21, v22);
}

uint64_t type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters(uint64_t a1)
{
  v2 = qword_2802DE9D0;
  if (!qword_2802DE9D0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F9102C(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 44)));
  return sub_268D28588(v11);
}

uint64_t sub_268F910DC()
{
  v81 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v75 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v76 = &v56 - v75;
  v81 = v0;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v78 = sub_268F9B734();
  v79 = v5;
  v6 = sub_268F9AEF4();
  v7 = v79;
  *v79 = v6;
  v7[1] = v8;
  v80 = *v0;

  if (v80)
  {
    v73 = v80;
    v72 = v80;
    v9 = type metadata accessor for SettingsNumericSettingAction();
    v10 = v79;
    v11 = v72;
    v79[5] = v9;
    v10[2] = v11;
  }

  else
  {
    v55 = v79;
    v79[2] = 0;
    v55[3] = 0;
    v55[4] = 0;
    v55[5] = 0;
  }

  v12 = sub_268F9AEF4();
  v13 = v79;
  v14 = v74;
  v79[6] = v12;
  v13[7] = v15;
  v71 = *(v14 + 8);

  if (v71)
  {
    v70 = v71;
    v69 = v71;
    v16 = sub_268F9AA44();
    v17 = v79;
    v18 = v69;
    v79[11] = v16;
    v17[8] = v18;
  }

  else
  {
    v54 = v79;
    v79[8] = 0;
    v54[9] = 0;
    v54[10] = 0;
    v54[11] = 0;
  }

  v67 = 1;
  v19 = sub_268F9AEF4();
  v20 = v79;
  v21 = v74;
  v79[12] = v19;
  v20[13] = v22;
  LOBYTE(v21) = *(v21 + 16);
  v66 = MEMORY[0x277D839B0];
  v20[17] = MEMORY[0x277D839B0];
  *(v20 + 112) = v21;
  v23 = sub_268F9AEF4();
  v24 = v66;
  v25 = v79;
  v26 = v74;
  v79[18] = v23;
  v25[19] = v27;
  LOBYTE(v26) = *(v26 + 17);
  v25[23] = v24;
  *(v25 + 160) = v26;
  v28 = sub_268F9AEF4();
  v29 = v79;
  v30 = v74;
  v79[24] = v28;
  v29[25] = v31;
  v68 = *(v30 + 24);

  if (v68)
  {
    v65 = v68;
    v64 = v68;
    v32 = type metadata accessor for SettingsNumericSetting(0);
    v33 = v79;
    v34 = v64;
    v79[29] = v32;
    v33[26] = v34;
  }

  else
  {
    v53 = v79;
    v79[26] = 0;
    v53[27] = 0;
    v53[28] = 0;
    v53[29] = 0;
  }

  v60 = 1;
  v35 = sub_268F9AEF4();
  v36 = v79;
  v37 = v74;
  v79[30] = v35;
  v36[31] = v38;
  LOBYTE(v37) = *(v37 + 32);
  v57 = MEMORY[0x277D839B0];
  v36[35] = MEMORY[0x277D839B0];
  *(v36 + 256) = v37;
  v39 = sub_268F9AEF4();
  v40 = v57;
  v41 = v79;
  v42 = v74;
  v79[36] = v39;
  v41[37] = v43;
  LOBYTE(v42) = *(v42 + 33);
  v41[41] = v40;
  *(v41 + 304) = v42;
  v58 = v41 + 44;
  v44 = sub_268F9AEF4();
  v45 = v79;
  v79[42] = v44;
  v45[43] = v46;
  v59 = 0;
  v47 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters(0);
  sub_268D2A1F0((v74 + *(v47 + 44)), v76);
  v61 = sub_268F9A9C4();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  if ((*(v62 + 48))(v76, v60) == 1)
  {
    sub_268D28588(v76);
    v52 = v79;
    v79[44] = 0;
    v52[45] = 0;
    v52[46] = 0;
    v52[47] = 0;
  }

  else
  {
    v48 = v58;
    v79[47] = v61;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
    (*(v62 + 32))(boxed_opaque_existential_1, v76, v61);
  }

  sub_268CD0F7C();
  v56 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

void *sub_268F91584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, const void *a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 33) = a7;
  v9 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters(0);
  return sub_268D84F40(a8, (a9 + *(v9 + 44)));
}

uint64_t sub_268F915E4(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v3[8] = a2;
  v3[7] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v3[6] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268F91648, 0);
}

uint64_t sub_268F91648()
{
  v6 = MEMORY[0x277D55BE8];
  v4 = v0[7];
  v0[4] = v0;
  v0[6] = sub_268D63D3C();
  v4(v0 + 6);
  v11 = sub_268F9AEF4();
  v8 = v1;
  v0[10] = v1;
  v5 = v0[6];

  v9 = sub_268F8F32C(v5);
  v0[11] = v9;

  v10 = (v6 + *v6);
  v2 = swift_task_alloc();
  *(v7 + 96) = v2;
  *v2 = *(v7 + 32);
  v2[1] = sub_268D73B74;

  return v10(v11, v8, v9);
}

uint64_t sub_268F9179C(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](sub_268F918A8, 0);
}

uint64_t sub_268F918A8()
{
  v8 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v6 = v1;
  v7 = v0[9];
  v5 = v0[6];
  v0[4] = v0;
  sub_268F8F948(v1);
  v5(v6);
  v13 = sub_268F9AEF4();
  v10 = v2;
  v0[11] = v2;
  sub_268F91D38(v6, v7);
  v11 = sub_268F8F5A0();
  v0[12] = v11;
  sub_268F91EF8(v7);
  v12 = (v8 + *v8);
  v3 = swift_task_alloc();
  *(v9 + 104) = v3;
  *v3 = *(v9 + 32);
  v3[1] = sub_268F91A08;

  return v12(v13, v10, v11);
}

uint64_t sub_268F91A08(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268F91C5C;
  }

  else
  {

    v3 = sub_268F91B9C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F91B9C()
{
  v1 = v0[10];
  v0[4] = v0;
  sub_268F91EF8(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_268F91C5C()
{
  v3 = *(v0 + 80);
  *(v0 + 32) = v0;

  sub_268F91EF8(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

char *sub_268F91D38(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v7 = *(a1 + 2);

  *(a2 + 2) = v7;
  v8 = *(type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters(0) + 28);
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a1[v8], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v8], &a1[v8], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))();
    (*(v11 + 56))(&a2[v8], 0, 1, v10);
  }

  return a2;
}

uint64_t sub_268F91EF8(uint64_t a1)
{

  v2 = *(type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters(0) + 28);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_268F91FE8(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 48) = a3;
  *(v5 + 138) = a2 & 1;
  *(v5 + 137) = a1 & 1;
  *(v5 + 32) = v5;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v5 + 72) = swift_task_alloc();
  type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters(0);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 136) = a1 & 1;
  *(v5 + 144) = a2 & 1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 40) = v4;

  return MEMORY[0x2822009F8](sub_268F9219C, 0);
}

uint64_t sub_268F9219C()
{
  v11 = MEMORY[0x277D55BE8];
  v9 = *(v0 + 88);
  v10 = *(v0 + 80);
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  v6 = *(v0 + 138);
  v5 = *(v0 + 137);
  *(v0 + 32) = v0;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 56))(v7, 1);
  sub_268F8FFBC(0, 0, 0, v5 & 1, v6 & 1, v7, v9);
  v8(v9);
  v16 = sub_268F9AEF4();
  v13 = v2;
  *(v0 + 96) = v2;
  sub_268F926E8(v9, v10);
  v14 = sub_268F8FB94();
  *(v0 + 104) = v14;
  sub_268F928BC(v10);
  v15 = (v11 + *v11);
  v3 = swift_task_alloc();
  *(v12 + 112) = v3;
  *v3 = *(v12 + 32);
  v3[1] = sub_268F92388;

  return v15(v16, v13, v14);
}

uint64_t sub_268F92388(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = sub_268F925F4;
  }

  else
  {

    v3 = sub_268F9251C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F9251C()
{
  v1 = v0[11];
  v0[4] = v0;
  sub_268F928BC(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[15];

  return v2(v3);
}

uint64_t sub_268F925F4()
{
  v3 = *(v0 + 88);
  *(v0 + 32) = v0;

  sub_268F928BC(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268F926E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = a1[1];

  *(a2 + 8) = v5;
  v6 = a1[2];

  *(a2 + 16) = v6;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 25) = *(a1 + 25);
  v8 = *(type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters(0) + 36);
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v8, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v8), a1 + v8, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))();
    (*(v11 + 56))(a2 + v8, 0, 1, v10);
  }

  return a2;
}

uint64_t sub_268F928BC(uint64_t a1)
{

  v2 = *(type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters(0) + 36);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_268F929AC(uint64_t a1, uint64_t a2)
{
  v3[11] = v2;
  v3[10] = a2;
  v3[9] = a1;
  v3[7] = v3;
  v3[5] = 0;
  v3[6] = 0;
  v3[8] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = a1;
  v3[6] = a2;
  v3[8] = v2;
  return MEMORY[0x2822009F8](sub_268F92A18, 0);
}

uint64_t sub_268F92A18()
{
  v10 = MEMORY[0x277D55BE8];
  v6 = v0[9];
  v0[7] = v0;
  v0[2] = sub_268F90280();
  v0[3] = v1;
  v0[4] = v2;
  v6(v0 + 2);
  v15 = sub_268F9AEF4();
  v12 = v3;
  v0[12] = v3;
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];

  v13 = sub_268F90040(v7, v8, v9);
  v0[13] = v13;

  v14 = (v10 + *v10);
  v4 = swift_task_alloc();
  *(v11 + 112) = v4;
  *v4 = *(v11 + 56);
  v4[1] = sub_268F92BAC;

  return v14(v15, v12, v13);
}

uint64_t sub_268F92BAC(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = sub_268F92DE0;
  }

  else
  {

    v3 = sub_268F92D40;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F92D40()
{
  *(v0 + 56) = v0;
  sub_268F92E98();
  v1 = *(*(v4 + 56) + 8);
  v2 = *(v4 + 120);

  return v1(v2);
}

uint64_t sub_268F92DE0()
{
  *(v0 + 56) = v0;

  sub_268F92E98();
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

void sub_268F92E98()
{
}

uint64_t sub_268F92EDC(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = v4;
  *(v5 + 72) = a4;
  *(v5 + 64) = a3;
  *(v5 + 43) = a2 & 1;
  *(v5 + 42) = a1 & 1;
  *(v5 + 48) = v5;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 56) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 128) = a1 & 1;
  *(v5 + 136) = a2 & 1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 56) = v4;
  return MEMORY[0x2822009F8](sub_268F92F90, 0);
}

uint64_t sub_268F92F90()
{
  v11 = MEMORY[0x277D55BE8];
  v7 = *(v0 + 64);
  *(v0 + 48) = v0;
  sub_268F90500();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 41) = v3;
  v7(v0 + 32);
  v16 = sub_268F9AEF4();
  v13 = v4;
  *(v0 + 88) = v4;
  v10 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 41);

  LOBYTE(v17) = v8;
  HIBYTE(v17) = v9;
  v14 = sub_268F9033C(v10, v17);
  *(v0 + 96) = v14;

  v15 = (v11 + *v11);
  v5 = swift_task_alloc();
  *(v12 + 104) = v5;
  *v5 = *(v12 + 48);
  v5[1] = sub_268F9314C;

  return v15(v16, v13, v14);
}

uint64_t sub_268F9314C(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268F93388;
  }

  else
  {

    v3 = sub_268F932E0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F932E0()
{
  *(v0 + 48) = v0;
  sub_268D287E8((v0 + 32));
  v1 = *(*(v4 + 48) + 8);
  v2 = *(v4 + 112);

  return v1(v2);
}

uint64_t sub_268F93388()
{
  *(v0 + 48) = v0;

  sub_268D287E8((v0 + 32));
  v1 = *(*(v3 + 48) + 8);

  return v1();
}

uint64_t sub_268F93448(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](sub_268F93554, 0);
}

uint64_t sub_268F93554()
{
  v8 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v6 = v1;
  v7 = v0[9];
  v5 = v0[6];
  v0[4] = v0;
  sub_268F90DCC(v1);
  v5(v6);
  v13 = sub_268F9AEF4();
  v10 = v2;
  v0[11] = v2;
  sub_268F939E4(v6, v7);
  v11 = sub_268F90990();
  v0[12] = v11;
  sub_268F93EB8(v7);
  v12 = (v8 + *v8);
  v3 = swift_task_alloc();
  *(v9 + 104) = v3;
  *v3 = *(v9 + 32);
  v3[1] = sub_268F936B4;

  return v12(v13, v10, v11);
}

uint64_t sub_268F936B4(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268F93908;
  }

  else
  {

    v3 = sub_268F93848;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F93848()
{
  v1 = v0[10];
  v0[4] = v0;
  sub_268F93EB8(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_268F93908()
{
  v3 = *(v0 + 80);
  *(v0 + 32) = v0;

  sub_268F93EB8(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

char *sub_268F939E4(void *a1, char *a2)
{
  v13 = *a1;

  *a2 = v13;
  v14 = a1[1];

  *(a2 + 1) = v14;
  v16 = a1[2];

  *(a2 + 2) = v16;
  v17 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters(0);
  v18 = v17[7];
  v20 = sub_268F9A9C4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if ((v22)(a1 + v18, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v18], a1 + v18, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v21 + 16))();
    (*(v21 + 56))(&a2[v18], 0, 1, v20);
  }

  __dst = &a2[v17[8]];
  __src = a1 + v17[8];
  if (v22())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v21 + 16))(__dst, __src, v20);
    (*(v21 + 56))(__dst, 0, 1, v20);
  }

  v9 = &a2[v17[9]];
  v10 = a1 + v17[9];
  if (v22())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v9, v10, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v21 + 16))(v9, v10, v20);
    (*(v21 + 56))(v9, 0, 1, v20);
  }

  a2[v17[10]] = *(a1 + v17[10]);
  v7 = &a2[v17[11]];
  v8 = a1 + v17[11];
  if (v22())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v7, v8, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v21 + 16))(v7, v8, v20);
    (*(v21 + 56))(v7, 0, 1, v20);
  }

  return a2;
}

uint64_t sub_268F93EB8(uint64_t a1)
{

  v5 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters(0);
  v6 = v5[7];
  v8 = sub_268F9A9C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!(v10)(a1 + v6, 1))
  {
    (*(v9 + 8))(a1 + v6, v8);
  }

  v4 = a1 + v5[8];
  if (!v10())
  {
    (*(v9 + 8))(v4, v8);
  }

  v3 = a1 + v5[9];
  if (!v10())
  {
    (*(v9 + 8))(v3, v8);
  }

  v2 = a1 + v5[11];
  if (!v10())
  {
    (*(v9 + 8))(v2, v8);
  }

  return a1;
}

uint64_t sub_268F940F8(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = v6;
  *(v7 + 56) = a6;
  *(v7 + 48) = a5;
  *(v7 + 140) = a4 & 1;
  *(v7 + 139) = a3 & 1;
  *(v7 + 138) = a2 & 1;
  *(v7 + 137) = a1 & 1;
  *(v7 + 32) = v7;
  *(v7 + 136) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v7 + 72) = swift_task_alloc();
  type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters(0);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 136) = a1 & 1;
  *(v7 + 144) = a2 & 1;
  *(v7 + 152) = a3 & 1;
  *(v7 + 160) = a4 & 1;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  *(v7 + 40) = v6;

  return MEMORY[0x2822009F8](sub_268F9430C, 0);
}

uint64_t sub_268F9430C()
{
  v13 = MEMORY[0x277D55BE8];
  v11 = *(v0 + 88);
  v12 = *(v0 + 80);
  v9 = *(v0 + 72);
  v10 = *(v0 + 48);
  v8 = *(v0 + 140);
  v7 = *(v0 + 139);
  v6 = *(v0 + 138);
  v5 = *(v0 + 137);
  *(v0 + 32) = v0;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 56))(v9, 1);
  sub_268F91584(0, 0, v5 & 1, v6 & 1, 0, v7 & 1, v8 & 1, v9, v11);
  v10(v11);
  v18 = sub_268F9AEF4();
  v15 = v2;
  *(v0 + 96) = v2;
  sub_268F94890(v11, v12);
  v16 = sub_268F910DC();
  *(v0 + 104) = v16;
  sub_268F94A74(v12);
  v17 = (v13 + *v13);
  v3 = swift_task_alloc();
  *(v14 + 112) = v3;
  *v3 = *(v14 + 32);
  v3[1] = sub_268F94520;

  return v17(v18, v15, v16);
}

uint64_t sub_268F94520(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = sub_268F94794;
  }

  else
  {

    v3 = sub_268F946B4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268F946B4()
{
  v1 = v0[11];
  v0[4] = v0;
  sub_268F94A74(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[15];

  return v2(v3);
}

uint64_t sub_268F94794()
{
  v3 = *(v0 + 88);
  *(v0 + 32) = v0;

  sub_268F94A74(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268F94890(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = a1[1];

  *(a2 + 8) = v5;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 17) = *(a1 + 17);
  v6 = a1[3];

  *(a2 + 24) = v6;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 33) = *(a1 + 33);
  v8 = *(type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters(0) + 44);
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v8, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v8), a1 + v8, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))();
    (*(v11 + 56))(a2 + v8, 0, 1, v10);
  }

  return a2;
}

uint64_t sub_268F94A74(uint64_t a1)
{

  v2 = *(type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters(0) + 44);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_268F94BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v19 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v23 = sub_268F9AB24();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v15 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v4, v5, v6);
  v17 = &v14 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v7, v19, v8);
  v18 = &v14 - v16;
  v28 = v9;
  v27 = v10;
  v26 = v11;
  v29 = v3;
  sub_268CDC358(v9, &v14 - v16);
  (*(v20 + 16))(v17, v22, v23);
  MEMORY[0x277D82BE0](v19);
  v25 = sub_268F9A8D4();

  v29 = v25;
  v12 = MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v23, v12);
  sub_268CDC480(v24);

  return v25;
}

uint64_t sub_268F94DA4(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268F915E4(a1, a2);
}

uint64_t sub_268F94E64(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268F9179C(a1, a2);
}

uint64_t sub_268F94F24(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = *(v4 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268F91FE8(a1 & 1, a2 & 1, a3, a4);
}

uint64_t sub_268F94FFC(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268F929AC(a1, a2);
}

uint64_t sub_268F950BC(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = *(v4 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268F92EDC(a1 & 1, a2 & 1, a3, a4);
}

uint64_t sub_268F95194(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268F93448(a1, a2);
}

uint64_t sub_268F95254(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = *(v6 + 16);
  v7[1] = sub_268D7F90C;

  return sub_268F940F8(a1 & 1, a2 & 1, a3 & 1, a4 & 1, a5, a6);
}

unint64_t sub_268F9540C(uint64_t a1)
{
  v6 = sub_268EA20D4(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268D81048(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268E3B890(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_268D810E4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

uint64_t sub_268F95560(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*a1))
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_268F95690(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
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

uint64_t sub_268F95874(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 10))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void *sub_268F959C8(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = result + 10;
  if (a2 > 0x7FFFFFFE)
  {
    result = 0;
    *(v3 + 4) = 0;
    *v3 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_268F95BE8(uint64_t a1)
{
  v7 = sub_268EA20D4(319);
  if (v1 <= 0x3F)
  {
    v7 = sub_268D81048(319);
    if (v2 <= 0x3F)
    {
      v7 = sub_268E3B890(319);
      if (v3 <= 0x3F)
      {
        v7 = sub_268D810E4(319);
        if (v4 <= 0x3F)
        {
          v7 = sub_268D8154C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v7;
}

unint64_t sub_268F95DC8(uint64_t a1)
{
  v6 = sub_268EA20D4(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_268D81048(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_268E3B890(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_268D810E4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

uint64_t sub_268F95F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 8) + **(a4 + 8));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268F9607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 16) + **(a4 + 16));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268F961C0(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = v6;
  v14 = (*(a6 + 24) + **(a6 + 24));
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = *(v6 + 16);
  v7[1] = sub_268D82A48;

  return v14(a1 & 1, a2 & 1, a3, a4, a5, a6);
}

uint64_t sub_268F9631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 32) + **(a4 + 32));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268F96460(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = v6;
  v14 = (*(a6 + 40) + **(a6 + 40));
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = *(v6 + 16);
  v7[1] = sub_268D82A48;

  return v14(a1 & 1, a2 & 1, a3, a4, a5, a6);
}

uint64_t sub_268F965BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 48) + **(a4 + 48));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_268F96700(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = v8;
  v18 = (*(a8 + 56) + **(a8 + 56));
  v9 = swift_task_alloc();
  *(v8 + 24) = v9;
  *v9 = *(v8 + 16);
  v9[1] = sub_268D82A48;

  return v18(a1 & 1, a2 & 1, a3 & 1, a4 & 1, a5, a6, a7, a8);
}

uint64_t type metadata accessor for SetNumericSettingIntentCATPatternsExecutor(uint64_t a1)
{
  v2 = qword_2802DE9E0;
  if (!qword_2802DE9E0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F968E8(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

unint64_t sub_268F9698C()
{
  v2 = qword_2802DE9F0;
  if (!qword_2802DE9F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE9F0);
    return WitnessTable;
  }

  return v2;
}

char *sub_268F96A08(void *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = a1[1];
  *(a2 + 2) = a1[2];
  v14 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters(0);
  v15 = v14[7];
  v17 = sub_268F9A9C4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if ((v19)(a1 + v15, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v15], a1 + v15, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v18 + 32))();
    (*(v18 + 56))(&a2[v15], 0, 1, v17);
  }

  __dst = &a2[v14[8]];
  __src = a1 + v14[8];
  if (v19())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v18 + 32))(__dst, __src, v17);
    (*(v18 + 56))(__dst, 0, 1, v17);
  }

  v9 = &a2[v14[9]];
  v10 = a1 + v14[9];
  if (v19())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v9, v10, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v18 + 32))(v9, v10, v17);
    (*(v18 + 56))(v9, 0, 1, v17);
  }

  a2[v14[10]] = *(a1 + v14[10]);
  v7 = &a2[v14[11]];
  v8 = a1 + v14[11];
  if (v19())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v7, v8, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v18 + 32))(v7, v8, v17);
    (*(v18 + 56))(v7, 0, 1, v17);
  }

  return a2;
}

char *sub_268F96EA4(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  v5 = *(type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters(0) + 28);
  v7 = sub_268F9A9C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a1[v5], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v5], &a1[v5], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))();
    (*(v8 + 56))(&a2[v5], 0, 1, v7);
  }

  return a2;
}

id sub_268F9702C()
{
  sub_268E7C6D0();
  type metadata accessor for ResourceBundleClass();
  result = sub_268E7D72C();
  qword_2802DE9F8 = result;
  return result;
}

uint64_t *sub_268F97074()
{
  if (qword_2802DB998 != -1)
  {
    swift_once();
  }

  return &qword_2802DE9F8;
}

uint64_t sub_268F970D4()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1888);
  __swift_project_value_buffer(v2, qword_2802F1888);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F9716C()
{
  if (qword_2802DB9A0 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1888);
}

uint64_t sub_268F971D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F9716C();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F9723C()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F18A0);
  __swift_project_value_buffer(v2, qword_2802F18A0);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F972D4()
{
  if (qword_2802DB9A8 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F18A0);
}

uint64_t sub_268F97340@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F972D4();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F973A4()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F18B8);
  __swift_project_value_buffer(v2, qword_2802F18B8);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F9743C()
{
  if (qword_2802DB9B0 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F18B8);
}

uint64_t sub_268F974A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F9743C();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F9750C()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F18D0);
  __swift_project_value_buffer(v2, qword_2802F18D0);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F975A4()
{
  if (qword_2802DB9B8 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F18D0);
}

uint64_t sub_268F97610@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F975A4();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F97674()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F18E8);
  __swift_project_value_buffer(v2, qword_2802F18E8);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F9770C()
{
  if (qword_2802DB9C0 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F18E8);
}

uint64_t sub_268F97778@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F9770C();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F977DC()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1900);
  __swift_project_value_buffer(v2, qword_2802F1900);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F97874()
{
  if (qword_2802DB9C8 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1900);
}

uint64_t sub_268F978E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F97874();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F97944()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1918);
  __swift_project_value_buffer(v2, qword_2802F1918);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F979DC()
{
  if (qword_2802DB9D0 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1918);
}

uint64_t sub_268F97A48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F979DC();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F97AAC()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1930);
  __swift_project_value_buffer(v2, qword_2802F1930);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F97B44()
{
  if (qword_2802DB9D8 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1930);
}

uint64_t sub_268F97BB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F97B44();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F97C14()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1948);
  __swift_project_value_buffer(v2, qword_2802F1948);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F97CAC()
{
  if (qword_2802DB9E0 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1948);
}

uint64_t sub_268F97D18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F97CAC();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F97D7C()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1960);
  __swift_project_value_buffer(v2, qword_2802F1960);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F97E14()
{
  if (qword_2802DB9E8 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1960);
}

uint64_t sub_268F97E80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F97E14();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F97EE4()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1978);
  __swift_project_value_buffer(v2, qword_2802F1978);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F97F7C()
{
  if (qword_2802DB9F0 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1978);
}

uint64_t sub_268F97FE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F97F7C();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F9804C()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1990);
  __swift_project_value_buffer(v2, qword_2802F1990);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F980E4()
{
  if (qword_2802DB9F8 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1990);
}

uint64_t sub_268F98150@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F980E4();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F981B4()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F19A8);
  __swift_project_value_buffer(v2, qword_2802F19A8);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F9824C()
{
  if (qword_2802DBA00 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F19A8);
}

uint64_t sub_268F982B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F9824C();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F9831C()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F19C0);
  __swift_project_value_buffer(v2, qword_2802F19C0);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F983B4()
{
  if (qword_2802DBA08 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F19C0);
}

uint64_t sub_268F98420@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F983B4();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F98484()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F19D8);
  __swift_project_value_buffer(v2, qword_2802F19D8);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F9851C()
{
  if (qword_2802DBA10 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F19D8);
}

uint64_t sub_268F98588@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F9851C();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F985EC()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F19F0);
  __swift_project_value_buffer(v2, qword_2802F19F0);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F98684()
{
  if (qword_2802DBA18 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F19F0);
}

uint64_t sub_268F986F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F98684();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F98754()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1A08);
  __swift_project_value_buffer(v2, qword_2802F1A08);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F987EC()
{
  if (qword_2802DBA20 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1A08);
}

uint64_t sub_268F98858@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F987EC();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_268F988BC()
{
  v2 = sub_268F9ABA4();
  __swift_allocate_value_buffer(v2, qword_2802F1A20);
  __swift_project_value_buffer(v2, qword_2802F1A20);
  sub_268F9AEF4();
  v0 = sub_268F97074();
  MEMORY[0x277D82BE0](*v0);
  return sub_268F9AB94();
}

uint64_t sub_268F98954()
{
  if (qword_2802DBA28 != -1)
  {
    swift_once();
  }

  v0 = sub_268F9ABA4();
  return __swift_project_value_buffer(v0, qword_2802F1A20);
}

uint64_t sub_268F989C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268F98954();
  v1 = sub_268F9ABA4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_2802F0710 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_2802F0704 > a2)
  {
    return 1;
  }

  if (dword_2802F0704 < a2)
  {
    return 0;
  }

  return dword_2802F0708 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_2802F0718 == -1)
  {
    if (qword_2802F0720)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_2802F0720)
    {
      return _availability_version_check();
    }
  }

  if (qword_2802F0710 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_2802F0704 > a3)
      {
        return 1;
      }

      if (dword_2802F0704 >= a3)
      {
        return dword_2802F0708 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_2802F0720;
  if (qword_2802F0720)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_2802F0720 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x26D62E9B0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_2802F0704, &dword_2802F0708);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}