uint64_t sub_26F43E334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = type metadata accessor for SystemWideSheetView(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3B8DD4(v5, v11, &qword_2806E08E8, &unk_26F4A84F0);
  v12 = (v5 + *(a2 + 20));
  v13 = (v5 + *(a2 + 24));
  v14 = *v13;
  v15 = v13[1];
  v16 = v9[9];
  v17 = &v11[v9[8]];
  v18 = *v12;
  v28 = v12[1];
  v29 = v18;
  *&v11[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0910, &qword_26F4A85E8);
  swift_storeEnumTagMultiPayload();
  v19 = &v11[v9[7]];
  v20 = v28;
  *v19 = v29;
  *(v19 + 1) = v20;
  *v17 = v14;
  v17[1] = v15;
  v21 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0918, &qword_26F4A85F0) + 36);
  sub_26F43EF1C(v11, v21, type metadata accessor for SystemWideSheetView);
  *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0920, &qword_26F4A85F8) + 36)) = 0;
  sub_26F3ACF68(v14, v15);
  sub_26F43EEBC(v11, type metadata accessor for SystemWideSheetView);
  v22 = sub_26F49F5A8();
  v24 = v23;
  v25 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0928, &qword_26F4A8600) + 36));
  *v25 = v22;
  v25[1] = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0930, &qword_26F4A8608);
  return (*(*(v26 - 8) + 16))(a3, a1, v26);
}

uint64_t sub_26F43E540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(v2 + 16);
  v7 = v2[7];
  v8 = v2[8];
  KeyPath = swift_getKeyPath();
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0938, &qword_26F4A8610) + 36);
  *(v10 + *(type metadata accessor for SystemWideConsentView(0) + 28)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0910, &qword_26F4A85E8);
  swift_storeEnumTagMultiPayload();
  *v10 = v5;
  *(v10 + 8) = v4;
  *(v10 + 16) = v6;
  v11 = *(v2 + 3);
  *(v10 + 40) = *(v2 + 5);
  *(v10 + 24) = v11;
  *(v10 + 56) = v7;
  *(v10 + 64) = v8;
  *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0940, &qword_26F4A8618) + 36)) = 0;

  sub_26F3ACF68(v7, v8);
  v12 = sub_26F49F5A8();
  v14 = v13;
  v15 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0948, &qword_26F4A8620) + 36));
  *v15 = v12;
  v15[1] = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0950, &qword_26F4A8628);
  v17 = *(*(v16 - 8) + 16);

  return v17(a2, a1, v16);
}

uint64_t sub_26F43E708(uint64_t a1)
{
  v2 = sub_26F49DFD8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_26F49E448();
}

void sub_26F43E818(uint64_t a1)
{
  sub_26F3E5B60(319, &qword_2806E0900, &qword_2806E0908, &qword_26F4AB220, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      sub_26F3E5B60(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26F43E924(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26F43E924(uint64_t a1)
{
  if (!qword_2806E0970)
  {
    sub_26F49DFD8();
    v1 = sub_26F49DFE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2806E0970);
    }
  }
}

void sub_26F43E9A4(uint64_t a1)
{
  sub_26F43EA84();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      sub_26F3E5B60(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26F43E924(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26F43EA84()
{
  if (!qword_2806DEDC0)
  {
    v0 = sub_26F49F488();
    if (!v1)
    {
      atomic_store(v0, &qword_2806DEDC0);
    }
  }
}

unint64_t sub_26F43EAD4()
{
  result = qword_2806E0988;
  if (!qword_2806E0988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0918, &qword_26F4A85F0);
    sub_26F3B18CC(&qword_2806E0990, &qword_2806E0930, &qword_26F4A8608, MEMORY[0x277CE04B0]);
    sub_26F3B18CC(&qword_2806E0998, &qword_2806E0928, &qword_26F4A8600, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0988);
  }

  return result;
}

unint64_t sub_26F43EBB8()
{
  result = qword_2806E09A0;
  if (!qword_2806E09A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0938, &qword_26F4A8610);
    sub_26F3B18CC(&qword_2806E09A8, &qword_2806E0950, &qword_26F4A8628, MEMORY[0x277CE04B0]);
    sub_26F3B18CC(&qword_2806E09B0, &qword_2806E0948, &qword_26F4A8620, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E09A0);
  }

  return result;
}

uint64_t sub_26F43ED2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F43ED74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F43EDDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F43EE44()
{
  v1 = *(type metadata accessor for SystemWideSheetView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26F43E064(v2);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F43EEBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26F43EF1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_26F43EF84()
{
  v1 = *(type metadata accessor for SystemWideConsentView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_26F43CEE4(v2, v3);
}

uint64_t TaskHint.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

unint64_t sub_26F43F0A8()
{
  result = qword_2806E09E8;
  if (!qword_2806E09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E09E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F43F25C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000013;
    v6 = 0xD000000000000017;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7075736E5564696CLL;
    if (a1 != 5)
    {
      v7 = 0xD000000000000013;
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
    v1 = 0x7165527974706D65;
    v2 = 0x6E6F636E4964696CLL;
    v3 = 0x7365526F4E64696CLL;
    if (a1 != 3)
    {
      v3 = 0x6544746F4E64696CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x756C63784564696CLL;
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

uint64_t sub_26F43F3DC()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F43F25C(v1);
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F43F440(uint64_t a1)
{
  sub_26F43F25C(*v1);
  sub_26F49F9A8();
}

uint64_t sub_26F43F494(uint64_t a1)
{
  v2 = *v1;
  sub_26F4A0528();
  sub_26F43F25C(v2);
  sub_26F49F9A8();

  return sub_26F4A0568();
}

unint64_t sub_26F43F4F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F43F6C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_26F43F524@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26F43F25C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26F43F57C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_26F43F25C(*a1);
  v5 = v4;
  if (v3 == sub_26F43F25C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26F4A0458();
  }

  return v8 & 1;
}

unint64_t sub_26F43F608()
{
  result = qword_2806E09F0;
  if (!qword_2806E09F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E09F8, qword_26F4A88C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E09F0);
  }

  return result;
}

unint64_t sub_26F43F670()
{
  result = qword_2806E0A00;
  if (!qword_2806E0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0A00);
  }

  return result;
}

unint64_t sub_26F43F6C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_26F4A02A8();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26F43F710(uint64_t (*a1)(uint64_t a1), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A10, &unk_26F4A8A20);
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v60 - v6;
  v7 = type metadata accessor for Signpost(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = &v60 - v11;
  v71 = type metadata accessor for TextModel(0);
  v12 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  if (v15)
  {
    v63 = v8;
    v64 = v9;
    v65 = v5;
    v62 = a1;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26F403380(0, v15, 0);
    v16 = aBlock[0];
    v17 = (a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)));
    v18 = *(v12 + 72);
    v61 = v17;
    do
    {
      sub_26F44277C(v17, v14, type metadata accessor for TextModel);
      v19 = &v14[*(v71 + 24)];
      v20 = *v19;
      v21 = *(v19 + 1);

      sub_26F442914(v14, type metadata accessor for TextModel);
      aBlock[0] = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_26F403380((v22 > 1), v23 + 1, 1);
        v16 = aBlock[0];
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v17 += v18;
      --v15;
    }

    while (v15);
    a1 = v62;
    v25 = *&v61[*(v71 + 48)];
    goto LABEL_9;
  }

  v16 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
    v63 = v8;
    v64 = v9;
    v65 = v5;
    v25 = 0;
LABEL_9:
    if (qword_280F66AD0 != -1)
    {
      swift_once();
    }

    v26 = sub_26F49DCA8();
    __swift_project_value_buffer(v26, qword_280F67E98);
    v27 = sub_26F49DC88();
    v28 = sub_26F49FDC8();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v63;
    v71 = v25;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v72 = v25;
      aBlock[0] = v32;
      *v31 = 136446210;
      type metadata accessor for _LTTextLanguageDetectorStrategy(0);
      v33 = sub_26F49F938();
      v35 = sub_26F3B38D0(v33, v34, aBlock);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_26F39E000, v27, v28, "Text LID request strategy: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x274391F70](v32, -1, -1);
      MEMORY[0x274391F70](v31, -1, -1);
    }

    v36 = v70;
    sub_26F43762C(0, 0, v70);
    v61 = objc_opt_self();
    v60 = sub_26F49FAD8();
    v62 = type metadata accessor for Signpost;
    v37 = v36;
    v38 = v66;
    sub_26F44277C(v37, v66, type metadata accessor for Signpost);
    v40 = v67;
    v39 = v68;
    v41 = v69;
    (*(v68 + 16))(v67, a1, v69);
    v42 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v43 = (v64 + *(v39 + 80) + v42) & ~*(v39 + 80);
    v44 = (v65 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    sub_26F442B98(v38, v45 + v42, type metadata accessor for Signpost);
    (*(v39 + 32))(v45 + v43, v40, v41);
    *(v45 + v44) = v16;
    v46 = v71;
    *(v45 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8)) = v71;
    aBlock[4] = sub_26F4427E4;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26F44057C;
    aBlock[3] = &block_descriptor_10;
    v47 = _Block_copy(aBlock);

    v48 = v60;
    [v61 languagesForText:v60 usingModel:1 strategy:v46 useDedicatedTextMachPort:1 completion:v47];
    _Block_release(v47);

    return sub_26F442914(v70, v62);
  }

  if (qword_280F66AD0 != -1)
  {
    swift_once();
  }

  v50 = sub_26F49DCA8();
  __swift_project_value_buffer(v50, qword_280F67E98);
  v51 = sub_26F49DC88();
  v52 = sub_26F49FDD8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    sub_26F442974();
    v55 = swift_allocError();
    *v56 = 0;
    v57 = sub_26F49D7E8();

    *(v53 + 4) = v57;
    *v54 = v57;
    _os_log_impl(&dword_26F39E000, v51, v52, "Failed to do LID since text is empty: %@", v53, 0xCu);
    sub_26F3B6B4C(v54, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v54, -1, -1);
    MEMORY[0x274391F70](v53, -1, -1);
  }

  sub_26F442974();
  v58 = swift_allocError();
  *v59 = 0;
  aBlock[0] = v58;
  return sub_26F49FB78();
}

uint64_t sub_26F43FE6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_26F49DAB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  if (a1)
  {
    v70 = a1;
    v20 = [v70 dominantLocale];
    if (v20)
    {
      v67 = a5;
      v21 = v20;
      sub_26F49DA18();

      if (qword_280F66AD0 != -1)
      {
        swift_once();
      }

      v22 = sub_26F49DCA8();
      __swift_project_value_buffer(v22, qword_280F67E98);
      v68 = *(v11 + 16);
      v69 = v11 + 16;
      v68(v16, v19, v10);

      v23 = sub_26F49DC88();
      v24 = sub_26F49FDC8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v65 = a3;
        v26 = v25;
        v64 = swift_slowAlloc();
        v72 = v64;
        *v26 = 134349827;
        *(v26 + 4) = *(a4 + 16);

        *(v26 + 12) = 2082;
        v63 = v24;
        v27 = sub_26F49D988();
        v66 = a2;
        v29 = v28;
        v61 = a4;
        v62 = v23;
        v30 = *(v11 + 8);
        v30(v16, v10);
        v31 = sub_26F3B38D0(v27, v29, &v72);

        *(v26 + 14) = v31;
        *(v26 + 22) = 2082;
        v71 = v67;
        type metadata accessor for _LTTextLanguageDetectorStrategy(0);
        v32 = sub_26F49F938();
        v34 = sub_26F3B38D0(v32, v33, &v72);

        *(v26 + 24) = v34;
        *(v26 + 32) = 2085;
        v35 = MEMORY[0x274390900](v61, MEMORY[0x277D837D0]);
        v37 = sub_26F3B38D0(v35, v36, &v72);

        *(v26 + 34) = v37;
        v38 = v62;
        _os_log_impl(&dword_26F39E000, v62, v63, "Successfully identified text of length %{public}ld as %{public}s using strategy: %{public}s; text: %{sensitive}s", v26, 0x2Au);
        v39 = v64;
        swift_arrayDestroy();
        MEMORY[0x274391F70](v39, -1, -1);
        MEMORY[0x274391F70](v26, -1, -1);
      }

      else
      {

        v30 = *(v11 + 8);
        v30(v16, v10);
      }

      v68(v13, v19, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A10, &unk_26F4A8A20);
      sub_26F49FB88();

      v30(v19, v10);
    }

    else
    {
      if (qword_280F66AD0 != -1)
      {
        swift_once();
      }

      v50 = sub_26F49DCA8();
      __swift_project_value_buffer(v50, qword_280F67E98);
      v51 = sub_26F49DC88();
      v52 = sub_26F49FDD8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        sub_26F442974();
        v55 = swift_allocError();
        *v56 = 2;
        v57 = sub_26F49D7E8();

        *(v53 + 4) = v57;
        *v54 = v57;
        _os_log_impl(&dword_26F39E000, v51, v52, "Failed to get dominant result for text LID: %@", v53, 0xCu);
        sub_26F3B6B4C(v54, &qword_2806DF258, &qword_26F4A6220);
        MEMORY[0x274391F70](v54, -1, -1);
        MEMORY[0x274391F70](v53, -1, -1);
      }

      sub_26F442974();
      v58 = swift_allocError();
      *v59 = 2;
      v72 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A10, &unk_26F4A8A20);
      sub_26F49FB78();
    }
  }

  else
  {
    if (qword_280F66AD0 != -1)
    {
      swift_once();
    }

    v40 = sub_26F49DCA8();
    __swift_project_value_buffer(v40, qword_280F67E98);
    v41 = sub_26F49DC88();
    v42 = sub_26F49FDD8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      sub_26F442974();
      v45 = swift_allocError();
      *v46 = 3;
      v47 = sub_26F49D7E8();

      *(v43 + 4) = v47;
      *v44 = v47;
      _os_log_impl(&dword_26F39E000, v41, v42, "Faield to get result for text LID: %@", v43, 0xCu);
      sub_26F3B6B4C(v44, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v44, -1, -1);
      MEMORY[0x274391F70](v43, -1, -1);
    }

    sub_26F442974();
    v48 = swift_allocError();
    *v49 = 3;
    v72 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A10, &unk_26F4A8A20);
    sub_26F49FB78();
  }

  return sub_26F437AD0();
}

void sub_26F44057C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t static TextIdentificationService.identify(_:grouped:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A08, &unk_26F4A89F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  v9[16] = a2;
  v10 = a1;
  type metadata accessor for TextModel(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D85778], v4);
  return sub_26F49FC78();
}

uint64_t sub_26F44070C(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_26F49FC08();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  (*(v7 + 32))(v15 + v14, v9, v6);

  sub_26F40570C(0, 0, v12, &unk_26F4A8A48, v15);
}

uint64_t sub_26F440924(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 168) = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A20, &qword_26F4A8A50);
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();
  v8 = type metadata accessor for TextModel(0);
  *(v6 + 56) = v8;
  *(v6 + 64) = *(v8 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  v9 = sub_26F49DAB8();
  *(v6 + 104) = v9;
  *(v6 + 112) = *(v9 - 8);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F440ADC, 0, 0);
}

uint64_t sub_26F440ADC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 168);
  v3 = swift_task_alloc();
  v4 = v3;
  *(v0 + 136) = v3;
  *(v3 + 16) = v1;
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = sub_26F440C90;
    v6 = *(v0 + 128);
    v7 = *(v0 + 104);

    return MEMORY[0x2822008A0](v6, 0, 0, 0x796669746E656469, 0xEC000000293A5F28, sub_26F442B90, v4, v7);
  }

  else
  {
    *(v3 + 24) = *(v0 + 24);
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_26F441530;
    v9 = MEMORY[0x277D84F78] + 8;
    v10 = MEMORY[0x277D84F78] + 8;
    v11 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200600](v8, v9, v10, 0, 0, &unk_26F4A8A60, v4, v11);
  }
}

uint64_t sub_26F440C90()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_26F4411C8;
  }

  else
  {

    v2 = sub_26F440DAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F440DAC()
{
  v41 = v0;
  if (qword_280F66AD0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = sub_26F49DCA8();
  __swift_project_value_buffer(v5, qword_280F67E98);
  v6 = *(v4 + 16);
  v6(v1, v2, v3);

  v7 = sub_26F49DC88();
  v8 = sub_26F49FDC8();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[13];
  v13 = v0[2];
  v37 = v6;
  if (v9)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40 = v15;
    *v14 = 134218242;
    *(v14 + 4) = *(v13 + 16);

    *(v14 + 12) = 2082;
    v16 = sub_26F49D988();
    v18 = v17;
    v32 = *(v11 + 8);
    v32(v10, v12);
    v19 = sub_26F3B38D0(v16, v18, &v40);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_26F39E000, v7, v8, "Successfully identified %ld text models as: %{public}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x274391F70](v15, -1, -1);
    MEMORY[0x274391F70](v14, -1, -1);
  }

  else
  {

    v32 = *(v11 + 8);
    v32(v10, v12);
  }

  v20 = v0[2];
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v0[8];
    v36 = v0[7];
    v23 = v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v35 = (v0[14] + 56);
    v33 = *(v22 + 72);
    v34 = (v0[5] + 8);
    do
    {
      v24 = v0[16];
      v26 = v0[12];
      v25 = v0[13];
      v27 = v0[10];
      v28 = v0[11];
      v39 = v0[4];
      v38 = v0[6];
      sub_26F44277C(v23, v26, type metadata accessor for TextModel);
      sub_26F44277C(v26, v28, type metadata accessor for TextModel);
      v29 = *(v36 + 28);
      sub_26F3B6B4C(v28 + v29, &qword_2806DEFD8, &qword_26F4A3670);
      v37(v28 + v29, v24, v25);
      (*v35)(v28 + v29, 0, 1, v25);
      sub_26F44277C(v28, v27, type metadata accessor for TextModel);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
      sub_26F49FC38();
      (*v34)(v38, v39);
      sub_26F442914(v26, type metadata accessor for TextModel);
      sub_26F442914(v28, type metadata accessor for TextModel);
      v23 += v33;
      --v21;
    }

    while (v21);
  }

  v32(v0[16], v0[13]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  sub_26F49FC48();

  v30 = v0[1];

  return v30();
}

uint64_t sub_26F4411C8()
{

  if (qword_280F66AD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_26F49DCA8();
  __swift_project_value_buffer(v2, qword_280F67E98);

  v3 = v1;
  v4 = sub_26F49DC88();
  v5 = sub_26F49FDD8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134218242;
    *(v7 + 4) = *(v6 + 16);

    *(v7 + 12) = 2112;
    v9 = sub_26F49D7E8();
    *(v7 + 14) = v9;
    *v8 = v9;
    _os_log_impl(&dword_26F39E000, v4, v5, "Failed to identify text in %ld models: %@", v7, 0x16u);
    sub_26F3B6B4C(v8, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v8, -1, -1);
    MEMORY[0x274391F70](v7, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v0 + 64);
    v25 = *(v0 + 56);
    v26 = *(v0 + 152);
    v13 = v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v23 = (*(v0 + 40) + 8);
    v24 = *(v12 + 72);
    do
    {
      v14 = *(v0 + 152);
      v16 = *(v0 + 80);
      v15 = *(v0 + 88);
      v17 = *(v0 + 72);
      v28 = *(v0 + 32);
      v27 = *(v0 + 48);
      sub_26F44277C(v13, v17, type metadata accessor for TextModel);
      sub_26F44277C(v17, v15, type metadata accessor for TextModel);
      v18 = *(v25 + 44);
      v19 = *(v15 + v18);
      v20 = v14;

      *(v15 + v18) = v26;
      sub_26F44277C(v15, v16, type metadata accessor for TextModel);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
      sub_26F49FC38();
      (*v23)(v27, v28);
      sub_26F442914(v17, type metadata accessor for TextModel);
      sub_26F442914(v15, type metadata accessor for TextModel);
      v13 += v24;
      --v11;
    }

    while (v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  sub_26F49FC48();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_26F441530()
{

  return MEMORY[0x2822009F8](sub_26F441648, 0, 0);
}

uint64_t sub_26F441648()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  sub_26F49FC48();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F44171C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = *(type metadata accessor for TextModel(0) - 8);
  v4[18] = v7;
  v4[19] = *(v7 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F4418A4, 0, 0);
}

uint64_t sub_26F4418A4()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v31 = **(v0 + 72);
    v32 = *(v0 + 104);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v29 = *(v3 + 72);
    v30 = v4;
    v28 = v4 + *(v0 + 152);
    v27 = *(v0 + 112) + 7;
    do
    {
      v37 = v2;
      v9 = *(v0 + 160);
      v10 = *(v0 + 168);
      v11 = *(v0 + 136);
      v33 = v11;
      v35 = *(v0 + 128);
      v12 = *(v0 + 120);
      v13 = *(v0 + 88);
      v14 = *(v0 + 96);
      v34 = *(v0 + 80);
      v36 = v5;
      sub_26F44277C(v5, v10, type metadata accessor for TextModel);
      v15 = sub_26F49FC08();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v11, 1, 1, v15);
      sub_26F44277C(v10, v9, type metadata accessor for TextModel);
      (*(v32 + 16))(v12, v13, v14);
      v17 = (v28 + *(v32 + 80)) & ~*(v32 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      v19 = (v18 + 16);
      *(v18 + 24) = 0;
      sub_26F442B98(v9, v18 + v30, type metadata accessor for TextModel);
      (*(v32 + 32))(v18 + v17, v12, v14);
      *(v18 + ((v27 + v17) & 0xFFFFFFFFFFFFFFF8)) = v34;
      sub_26F40E5D4(v33, v35);
      LODWORD(v13) = (*(v16 + 48))(v35, 1, v15);

      v20 = *(v0 + 128);
      if (v13 == 1)
      {
        sub_26F3B6B4C(*(v0 + 128), &unk_2806E0710, &qword_26F4A60A0);
        if (*v19)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_26F49FBF8();
        (*(v16 + 8))(v20, v15);
        if (*v19)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v21 = sub_26F49FB68();
          v22 = v23;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v21 = 0;
      v22 = 0;
LABEL_10:
      v24 = swift_allocObject();
      *(v24 + 16) = &unk_26F4A8A78;
      *(v24 + 24) = v18;

      if (v22 | v21)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v21;
        *(v0 + 40) = v22;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 168);
      v8 = *(v0 + 136);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v31;
      swift_task_create();

      sub_26F3B6B4C(v8, &unk_2806E0710, &qword_26F4A60A0);
      sub_26F442914(v7, type metadata accessor for TextModel);
      v5 = v36 + v29;
      v2 = v37 - 1;
    }

    while (v37 != 1);
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_26F441CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A20, &qword_26F4A8A50);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for TextModel(0);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v9 = sub_26F49DAB8();
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F441E80, 0, 0);
}

uint64_t sub_26F441E80()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0118, &qword_26F4ABEF0);
  v3 = *(v1 + 80);
  *(v0 + 160) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 128) = v5;
  *(v5 + 16) = xmmword_26F4A3150;
  sub_26F44277C(v2, v5 + v4, type metadata accessor for TextModel);
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *(v6 + 16) = v5;
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_26F441FE8;
  v8 = *(v0 + 120);
  v9 = *(v0 + 96);

  return MEMORY[0x2822008A0](v8, 0, 0, 0x796669746E656469, 0xEC000000293A5F28, sub_26F442E4C, v6, v9);
}

uint64_t sub_26F441FE8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {

    v2 = sub_26F4424AC;
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v2 = sub_26F442164;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F442164()
{
  v34 = v0;
  if (qword_280F66AD0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = sub_26F49DCA8();
  __swift_project_value_buffer(v5, qword_280F67E98);
  v32 = *(v4 + 16);
  v32(v1, v2, v3);
  v6 = sub_26F49DC88();
  v7 = sub_26F49FDC8();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136446210;
    v14 = sub_26F49D988();
    v16 = v15;
    v31 = *(v10 + 8);
    v31(v9, v11);
    v17 = sub_26F3B38D0(v14, v16, &v33);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_26F39E000, v6, v7, "Successfully identified text as: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x274391F70](v13, -1, -1);
    MEMORY[0x274391F70](v12, -1, -1);
  }

  else
  {

    v31 = *(v10 + 8);
    v31(v9, v11);
  }

  v18 = v0[15];
  v20 = v0[12];
  v19 = v0[13];
  v22 = v0[10];
  v21 = v0[11];
  v23 = v0[7];
  v24 = v0[8];
  v25 = v0[6];
  v30 = v0[5];
  sub_26F44277C(v0[2], v21, type metadata accessor for TextModel);
  v26 = *(v24 + 28);
  sub_26F3B6B4C(v21 + v26, &qword_2806DEFD8, &qword_26F4A3670);
  v32(v21 + v26, v18, v20);
  (*(v19 + 56))(v21 + v26, 0, 1, v20);
  sub_26F44277C(v21, v22, type metadata accessor for TextModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  sub_26F49FC38();
  (*(v25 + 8))(v23, v30);
  v27 = v0[11];
  v31(v0[15], v0[12]);
  sub_26F442914(v27, type metadata accessor for TextModel);

  v28 = v0[1];

  return v28();
}

uint64_t sub_26F4424AC()
{
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (qword_280F66AD0 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_26F49DCA8();
  __swift_project_value_buffer(v2, qword_280F67E98);

  v3 = v1;
  v4 = sub_26F49DC88();
  v5 = sub_26F49FDD8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134349314;
    *(v7 + 4) = *(v6 + 16);

    *(v7 + 12) = 2112;
    v9 = sub_26F49D7E8();
    *(v7 + 14) = v9;
    *v8 = v9;
    _os_log_impl(&dword_26F39E000, v4, v5, "Failed to identify language of %{public}ld models: %@", v7, 0x16u);
    sub_26F3B6B4C(v8, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v8, -1, -1);
    MEMORY[0x274391F70](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[19];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[8];
  v14 = v0[6];
  sub_26F44277C(v0[2], v12, type metadata accessor for TextModel);
  v15 = *(v13 + 44);

  *(v12 + v15) = v10;
  sub_26F44277C(v12, v11, type metadata accessor for TextModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  sub_26F49FC38();
  v16 = v0[11];
  (*(v14 + 8))(v0[7], v0[5]);
  sub_26F442914(v16, type metadata accessor for TextModel);

  v17 = v0[1];

  return v17();
}

uint64_t sub_26F44277C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F4427E4(void *a1)
{
  v3 = *(type metadata accessor for Signpost(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A10, &unk_26F4A8A20) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_26F43FE6C(a1, v1 + v4, v1 + v7, v9, v10);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F442914(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26F442974()
{
  result = qword_280F663D0;
  if (!qword_280F663D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F663D0);
  }

  return result;
}

uint64_t sub_26F4429C8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26F3CEEAC;

  return sub_26F440924(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_26F442ADC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26F3CF3AC;

  return sub_26F44171C(a1, a2, v7, v6);
}

uint64_t sub_26F442B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F442C00(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TextModel(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_26F3CF3AC;

  return sub_26F441CE0(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_26F442D94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F3CEEAC;

  return sub_26F496FDC(a1, v4);
}

uint64_t sub_26F442E50(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for TextModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_26F403444(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_26F403444((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_26F446958(v9, v11 + v18 + v15 * v13);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void *sub_26F442FE4(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_26F4A00A8();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x274390F80](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_26F4A01D8();
          sub_26F4A0208();
          v5 = v14;
          sub_26F4A0218();
          v3 = &v18;
          sub_26F4A01E8();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_20:

  return v3;
}

uint64_t sub_26F4431A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 4 * v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_26F403424(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_26F403424((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 4 * v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t Array<A>.sourceParagraph.getter(uint64_t a1)
{
  v2 = type metadata accessor for TextModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v20 = v4;
    v21 = MEMORY[0x277D84F90];
    sub_26F403380(0, v7, 0);
    v9 = v20;
    v8 = v21;
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_26F446844(v10, v6);
      v12 = &v6[*(v9 + 24)];
      v14 = *v12;
      v13 = *(v12 + 1);

      sub_26F4468A8(v6);
      v21 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_26F403380((v15 > 1), v16 + 1, 1);
        v9 = v20;
        v8 = v21;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  v21 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A28, &qword_26F4A8A88);
  sub_26F3B18CC(&qword_2806E0A30, &qword_2806E0A28, &qword_26F4A8A88, MEMORY[0x277D83958]);
  v18 = sub_26F49F848();

  return v18;
}

uint64_t type metadata accessor for TextModel(uint64_t a1)
{
  result = qword_280F66C00;
  if (!qword_280F66C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Array<A>.sourceLocale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = type metadata accessor for TextModel(0);
    v5 = a1 + *(v4 + 28) + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));

    return sub_26F3E718C(v5, a2);
  }

  else
  {
    v7 = sub_26F49DAB8();
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t Array<A>.targetLocale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = type metadata accessor for TextModel(0);
    v5 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
    v6 = a1 + *(v4 + 36);
    v7 = sub_26F49DAB8();
    v14 = *(v7 - 8);
    (*(v14 + 16))(a2, v6 + v5, v7);
    v8 = *(v14 + 56);
    v9 = a2;
    v10 = 0;
    v11 = v7;
  }

  else
  {
    v12 = sub_26F49DAB8();
    v8 = *(*(v12 - 8) + 56);
    v11 = v12;
    v9 = a2;
    v10 = 1;
  }

  return v8(v9, v10, 1, v11);
}

uint64_t TextModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49D968();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TextModel.sourceString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextModel(0) + 24));

  return v1;
}

uint64_t TextModel.sourceString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextModel(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextModel.sourceLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TextModel(0) + 28);

  return sub_26F3E718C(v3, a1);
}

uint64_t TextModel.sourceLocale.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TextModel(0) + 28);

  return sub_26F3D27D4(a1, v3);
}

uint64_t TextModel.targetString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextModel(0) + 32));

  return v1;
}

uint64_t TextModel.targetString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextModel(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextModel.targetLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TextModel(0) + 36);
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TextModel.targetLocale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TextModel(0) + 36);
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TextModel.confidence.setter(double a1)
{
  result = type metadata accessor for TextModel(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

void *TextModel.error.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextModel(0) + 44));
  v2 = v1;
  return v1;
}

void TextModel.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TextModel(0) + 44);

  *(v1 + v3) = a1;
}

uint64_t sub_26F443CF8(uint64_t a1)
{
  sub_26F49F9A8();
}

unint64_t sub_26F443E18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F447520(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26F443E48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x6F4C746567726174;
  v6 = 0xEC000000656C6163;
  if (v2 != 5)
  {
    v5 = 0x6E656469666E6F63;
    v6 = 0xEA00000000006563;
  }

  v7 = 0x6F4C656372756F73;
  v8 = 0xEC000000656C6163;
  if (v2 != 3)
  {
    v7 = 0x7453746567726174;
    v8 = 0xEC000000676E6972;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7865646E69;
  if (v2 != 1)
  {
    v10 = 0x7453656372756F73;
    v9 = 0xEC000000676E6972;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_26F443F30()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6F4C746567726174;
  if (v1 != 5)
  {
    v3 = 0x6E656469666E6F63;
  }

  v4 = 0x6F4C656372756F73;
  if (v1 != 3)
  {
    v4 = 0x7453746567726174;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7865646E69;
  if (v1 != 1)
  {
    v5 = 0x7453656372756F73;
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

unint64_t sub_26F444014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F447520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F444048(uint64_t a1)
{
  v2 = sub_26F446904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F444084(uint64_t a1)
{
  v2 = sub_26F446904();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextModel.init(id:index:sourceString:sourceLocale:targetLocale:useWeightedIdentification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v24 = a7 & 1;
  v11 = type metadata accessor for TextModel(0);
  v12 = v11[7];
  v13 = sub_26F49DAB8();
  v14 = *(v13 - 8);
  (*(v14 + 56))(a8 + v12, 1, 1, v13);
  v15 = (a8 + v11[8]);
  v16 = v11[11];
  v17 = v11[12];
  v18 = sub_26F49D968();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  *(a8 + v11[5]) = a2;
  v19 = (a8 + v11[6]);
  *v19 = a3;
  v19[1] = a4;
  sub_26F3D27D4(a5, a8 + v12);
  *v15 = 0;
  v15[1] = 0;
  result = (*(v14 + 32))(a8 + v11[9], a6, v13);
  *(a8 + v11[10]) = 0;
  *(a8 + v16) = 0;
  *(a8 + v17) = v24;
  return result;
}

BOOL TextModel.isTranslatable.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for TextModel(0);
  if (*(v0 + v4[11]))
  {
    return 0;
  }

  v6 = (v0 + v4[6]);
  v8 = *v6;
  v7 = v6[1];
  v9 = v8 & 0xFFFFFFFFFFFFLL;
  if (!((v7 & 0x2000000000000000) != 0 ? HIBYTE(v7) & 0xF : v9))
  {
    return 0;
  }

  sub_26F3E718C(v0 + v4[7], v3);
  v11 = sub_26F49DAB8();
  v12 = (*(*(v11 - 8) + 48))(v3, 1, v11) != 1;
  sub_26F3EDA38(v3);
  return v12;
}

BOOL TextModel.isTranslated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for TextModel(0);
  result = 0;
  if (!*(v0 + v4[11]))
  {
    v6 = (v0 + v4[6]);
    v8 = *v6;
    v7 = v6[1];
    v9 = v8 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0 ? HIBYTE(v7) & 0xF : v9)
    {
      v11 = v4;
      sub_26F3E718C(v0 + v4[7], v3);
      v12 = sub_26F49DAB8();
      v13 = (*(*(v12 - 8) + 48))(v3, 1, v12);
      sub_26F3EDA38(v3);
      if (v13 != 1)
      {
        v14 = (v0 + v11[8]);
        v15 = v14[1];
        if (v15)
        {
          v16 = *v14 & 0xFFFFFFFFFFFFLL;
          if ((v15 & 0x2000000000000000) != 0 ? HIBYTE(v15) & 0xF : v16)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t TextModel.hash(into:)(uint64_t a1)
{
  sub_26F49D968();
  sub_26F44756C(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_26F49F828();
}

BOOL static TextModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_26F49D938() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TextModel(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_26F444588(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TextModel(0);
  v8 = *(v7 + 28);
  sub_26F3E718C(v2 + v8, v6);
  v9 = sub_26F49DAB8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_26F3EDA38(v6);
    return 0;
  }

  sub_26F49D988();
  (*(v10 + 8))(v6, v9);
  sub_26F4A0578();
  sub_26F49F9A8();

  sub_26F49D988();
  sub_26F49F9A8();

  if (a1)
  {
    sub_26F4475B4(*(v2 + *(v7 + 24)), *(v2 + *(v7 + 24) + 8), v2 + v8);
    if (!v12)
    {
      sub_26F4A0548();
      return sub_26F4A0558();
    }
  }

  else
  {
  }

  sub_26F4A0548();
  sub_26F49F9A8();

  return sub_26F4A0558();
}

uint64_t sub_26F444794()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v15 - v2;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_26F4A0178();

  v16 = 0x646F6D2074786554;
  v17 = 0xEF203A6469206C65;
  sub_26F49D968();
  sub_26F44756C(&qword_2806DEE50, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v4 = sub_26F4A0428();
  MEMORY[0x2743907E0](v4);

  MEMORY[0x2743907E0](0x203A7865646E6920, 0xE800000000000000);
  v5 = type metadata accessor for TextModel(0);
  v15[1] = *(v0 + *(v5 + 20));
  v6 = sub_26F4A0428();
  MEMORY[0x2743907E0](v6);

  MEMORY[0x2743907E0](0x3A656372756F7320, 0xE900000000000020);
  sub_26F3E718C(v0 + *(v5 + 28), v3);
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    sub_26F3EDA38(v3);
    v9 = 0xE300000000000000;
    v10 = 6369134;
  }

  else
  {
    v11 = sub_26F49D988();
    v9 = v12;
    (*(v8 + 8))(v3, v7);
    v10 = v11;
  }

  MEMORY[0x2743907E0](v10, v9);

  MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
  v13 = sub_26F49D988();
  MEMORY[0x2743907E0](v13);

  return v16;
}

uint64_t TextModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A38, &qword_26F4A8A90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F446904();
  sub_26F4A0598();
  v15 = 0;
  sub_26F49D968();
  sub_26F44756C(&qword_2806DEE68, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_26F4A03F8();
  if (!v1)
  {
    type metadata accessor for TextModel(0);
    v14 = 1;
    sub_26F4A03D8();
    v13 = 2;
    sub_26F4A0398();
    v12 = 3;
    sub_26F49DAB8();
    sub_26F44756C(&qword_2806E0A48, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
    sub_26F4A0388();
    v11 = 4;
    sub_26F4A0378();
    v10 = 5;
    sub_26F4A03F8();
    v9 = 6;
    sub_26F4A03B8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TextModel.hashValue.getter()
{
  sub_26F4A0528();
  sub_26F49D968();
  sub_26F44756C(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_26F49F828();
  return sub_26F4A0568();
}

uint64_t TextModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_26F49DAB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_26F49D968();
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A50, &qword_26F4A8A98);
  v12 = *(v11 - 8);
  v46 = v11;
  v47 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v15 = type metadata accessor for TextModel(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 28);
  v49 = v4;
  v21 = *(v4 + 56);
  v54 = v20;
  v52 = v3;
  v21(&v18[v20], 1, 1, v3, v16);
  *&v18[*(v15 + 44)] = 0;
  v50 = v15;
  v22 = v18;
  *&v18[*(v15 + 48)] = 0;
  v23 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_26F446904();
  v48 = v14;
  v24 = v51;
  sub_26F4A0588();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v53);
    sub_26F3EDA38(&v18[v54]);
  }

  else
  {
    v25 = v8;
    v61 = 0;
    sub_26F44756C(&qword_2806DEE78, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v27 = v45;
    v26 = v46;
    sub_26F4A0348();
    (*(v44 + 32))(v22, v27, v9);
    v60 = 1;
    v28 = sub_26F4A0328();
    v29 = v52;
    v30 = v50;
    *(v22 + v50[5]) = v28;
    v59 = 2;
    v31 = sub_26F4A02F8();
    v32 = (v22 + v30[6]);
    *v32 = v31;
    v32[1] = v33;
    v58 = 3;
    sub_26F44756C(&qword_2806E0A58, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
    sub_26F4A02E8();
    sub_26F3D27D4(v25, v22 + v54);
    v57 = 4;
    v34 = sub_26F4A02D8();
    v35 = (v22 + v50[8]);
    *v35 = v34;
    v35[1] = v36;
    v56 = 5;
    v37 = v43;
    sub_26F4A0348();
    v38 = v50;
    (*(v49 + 32))(v22 + v50[9], v37, v29);
    v55 = 6;
    sub_26F4A0318();
    v40 = v39;
    (*(v47 + 8))(v48, v26);
    *(v22 + v38[10]) = v40;
    sub_26F446844(v22, v42);
    __swift_destroy_boxed_opaque_existential_0(v53);
    return sub_26F4468A8(v22);
  }
}

uint64_t sub_26F4454A8()
{
  sub_26F4A0528();
  sub_26F49D968();
  sub_26F44756C(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_26F49F828();
  return sub_26F4A0568();
}

uint64_t sub_26F445530(uint64_t a1)
{
  sub_26F49D968();
  sub_26F44756C(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_26F49F828();
}

uint64_t sub_26F4455B4(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49D968();
  sub_26F44756C(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_26F49F828();
  return sub_26F4A0568();
}

uint64_t Array<A>.targetParagraph.getter(uint64_t a1)
{
  v2 = type metadata accessor for TextModel(0);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = &v6[*(v3 + 32)];
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    v11 = MEMORY[0x277D84F90];
    do
    {
      sub_26F446844(v9, v6);
      v14 = *v8;
      v13 = *(v8 + 1);

      sub_26F4468A8(v6);
      if (v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_26F4463D8(0, *(v11 + 2) + 1, 1, v11);
        }

        v16 = *(v11 + 2);
        v15 = *(v11 + 3);
        if (v16 >= v15 >> 1)
        {
          v11 = sub_26F4463D8((v15 > 1), v16 + 1, 1, v11);
        }

        *(v11 + 2) = v16 + 1;
        v12 = &v11[16 * v16];
        *(v12 + 4) = v14;
        *(v12 + 5) = v13;
      }

      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v19[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A28, &qword_26F4A8A88);
  sub_26F3B18CC(&qword_2806E0A30, &qword_2806E0A28, &qword_26F4A8A88, MEMORY[0x277D83958]);
  v17 = sub_26F49F848();

  return v17;
}

uint64_t sub_26F445924(uint64_t a1)
{
  v2 = type metadata accessor for TextModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_26F403444(0, v6, 0);
    v7 = v18;
    v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v8 = a1 + v17;
    v9 = *(v3 + 72);
    do
    {
      sub_26F446844(v8, v5);
      v10 = &v5[*(v2 + 24)];
      v12 = *v10;
      v11 = *(v10 + 1);
      v13 = &v5[*(v2 + 32)];

      *v13 = v12;
      *(v13 + 1) = v11;
      v18 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_26F403444((v14 > 1), v15 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v15 + 1;
      sub_26F446958(v5, v7 + v17 + v15 * v9);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_26F445AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26F446844(a1, a3);
  v5 = *(type metadata accessor for TextModel(0) + 36);
  v6 = sub_26F49DAB8();
  return (*(*(v6 - 8) + 24))(a3 + v5, a2, v6);
}

uint64_t Array<A>.updating(lines:useIndex:)(uint64_t a1, char a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v41 - v9;
  v10 = type metadata accessor for TextModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v41 - v14;
  MEMORY[0x28223BE20](v15);
  v41 = &v41 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - v22;
  v24 = *(a1 + 16);
  if (a2)
  {
    if (v24)
    {
      v25 = *(v10 + 20);
      v10 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v26 = a1 + v10;
      a1 = *(v21 + 72);

      while (1)
      {
        sub_26F446844(v26, v23);
        v12 = *&v23[v25];
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          result = sub_26F4469BC(a3);
          a3 = result;
          if ((v12 & 0x8000000000000000) != 0)
          {
LABEL_10:
            __break(1u);
            goto LABEL_11;
          }
        }

        if (v12 >= a3[2])
        {
          break;
        }

        sub_26F446A6C(v23, a3 + v10 + v12 * a1);
        v26 += a1;
        if (!--v24)
        {
          return a3;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_30:

    return a3;
  }

LABEL_11:
  if (!v24)
  {
    goto LABEL_30;
  }

  v44 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v45 = a1 + v44;
  v51 = *(v21 + 72);

  v28 = 0;
  v29 = v49;
  v48 = v12;
  v43 = v24;
  v50 = v19;
  while (2)
  {
    sub_26F446844(v45 + v51 * v28, v19);
    v30 = a3[2];
    if (!v30)
    {
      goto LABEL_14;
    }

    v46 = v28;
    v47 = a3;
    v31 = a3 + v44;
    while (1)
    {
      sub_26F446844(v31, v12);
      sub_26F3E718C(v12 + *(v10 + 28), v29);
      v32 = sub_26F49DAB8();
      v33 = *(v32 - 8);
      v34 = *(v33 + 48);
      v52 = v34(v29, 1, v32);
      if (v52 == 1)
      {
        sub_26F3EDA38(v29);
        v35 = 0;
      }

      else
      {
        sub_26F49D988();
        (*(v33 + 8))(v29, v32);
        sub_26F4A0578();
        sub_26F49F9A8();

        sub_26F49D988();
        sub_26F49F9A8();

        sub_26F4A0548();

        sub_26F49F9A8();

        v66 = v56;
        v67 = v57;
        v68 = v58;
        v64 = v54;
        v65 = v55;
        v35 = sub_26F4A0558();
      }

      v36 = v53;
      sub_26F3E718C(&v50[*(v10 + 28)], v53);
      if (v34(v36, 1, v32) != 1)
      {
        break;
      }

      sub_26F3EDA38(v53);
      if (v52 == 1)
      {
        goto LABEL_25;
      }

LABEL_18:
      v12 = v48;
      sub_26F4468A8(v48);
      v31 += v51;
      --v30;
      v29 = v49;
      if (!v30)
      {
        a3 = v47;
        v24 = v43;
        v19 = v50;
        v28 = v46;
        goto LABEL_14;
      }
    }

    sub_26F49D988();
    (*(v33 + 8))(v53, v32);
    sub_26F4A0578();
    sub_26F49F9A8();

    sub_26F49D988();
    sub_26F49F9A8();

    sub_26F4A0548();
    sub_26F49F9A8();
    v61 = v56;
    v62 = v57;
    v63 = v58;
    v59 = v54;
    v60 = v55;
    v37 = sub_26F4A0558();
    if (v52 == 1 || v35 != v37)
    {
      goto LABEL_18;
    }

LABEL_25:
    v12 = v48;
    v38 = v42;
    sub_26F446958(v48, v42);
    v39 = v41;
    sub_26F446958(v38, v41);
    v40 = *(v39 + *(v10 + 20));
    a3 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a3 = sub_26F4469BC(a3);
    }

    v24 = v43;
    v19 = v50;
    v28 = v46;
    result = sub_26F4468A8(v39);
    if ((v40 & 0x8000000000000000) != 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v40 >= a3[2])
    {
LABEL_34:
      __break(1u);
      return result;
    }

    sub_26F446A08(v19, a3 + v44 + v40 * v51);
    v29 = v49;
LABEL_14:
    sub_26F4468A8(v19);
    if (++v28 != v24)
    {
      continue;
    }

    return a3;
  }
}

char *sub_26F446268(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0100, &unk_26F4A6690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26F4463D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0160, &unk_26F4A7660);
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

void *sub_26F446534(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_26F446710(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A80, &qword_26F4A8D48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02A0, &qword_26F4A9B60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26F446844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F4468A8(uint64_t a1)
{
  v2 = type metadata accessor for TextModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F446904()
{
  result = qword_2806E0A40;
  if (!qword_2806E0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0A40);
  }

  return result;
}

uint64_t sub_26F446958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F446A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F446A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_26F446AF8(uint64_t a1)
{
  sub_26F49D968();
  if (v1 <= 0x3F)
  {
    sub_26F3FA4D0(319);
    if (v2 <= 0x3F)
    {
      sub_26F3F1EA8();
      if (v3 <= 0x3F)
      {
        sub_26F49DAB8();
        if (v4 <= 0x3F)
        {
          sub_26F446BFC(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for _LTTextLanguageDetectorStrategy(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26F446BFC(uint64_t a1)
{
  if (!qword_280F669D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E02A0, &qword_26F4A9B60);
    v1 = sub_26F49FFC8();
    if (!v2)
    {
      atomic_store(v1, &qword_280F669D8);
    }
  }
}

unint64_t sub_26F446C74()
{
  result = qword_2806E0A68;
  if (!qword_2806E0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0A68);
  }

  return result;
}

unint64_t sub_26F446CCC()
{
  result = qword_2806E0A70;
  if (!qword_2806E0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0A70);
  }

  return result;
}

unint64_t sub_26F446D24()
{
  result = qword_2806E0A78;
  if (!qword_2806E0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0A78);
  }

  return result;
}

unint64_t sub_26F446DC4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26F49FA38();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x274390810](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_26F446E40(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_26F446ED8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_26F446F4C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_26F446ED8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_26F446DC4(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26F446F4C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_26F4A01B8();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_26F447060(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_26F446E40(0xFuLL, a1, a2);
  v8 = sub_26F446E40(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_26F49F978();
      }

      else
      {
        v14 = result >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v15 = sub_26F4A01B8();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_26F49F988();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_26F4A01B8();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_40;
  }

  return 0;
}

void *sub_26F44729C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v5 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v7 = 0;
    a3 = 0;
    goto LABEL_30;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_30;
  }

  if (a3 < 0)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = a5 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v10 = a3 - 1;
  while (v7 < v5)
  {
    if ((a5 & 0x1000000000000000) != 0)
    {
      v25 = result;
      v27 = a2;
      v16 = a3;
      v17 = a5;
      v18 = a4;
      v19 = sub_26F4A0168();
      a3 = v16;
      a4 = v18;
      a5 = v17;
      v13 = v19;
      v14 = v20;
      result = v25;
      a2 = v27;
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v29[0] = a4;
        v29[1] = v8;
        v12 = v29 + v7;
      }

      else
      {
        v11 = v9;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v26 = result;
          v28 = a2;
          v21 = a5;
          v22 = a4;
          v23 = a3;
          v24 = sub_26F4A01B8();
          a3 = v23;
          a4 = v22;
          a5 = v21;
          v11 = v24;
          result = v26;
          a2 = v28;
        }

        v12 = (v11 + v7);
      }

      v13 = *v12;
      if ((*v12 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      v15 = (__clz(v13 ^ 0xFF) - 24);
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
          v14 = 3;
        }

        else
        {
          v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
          v14 = 4;
        }

        goto LABEL_17;
      }

      if (v15 == 1)
      {
LABEL_16:
        v14 = 1;
      }

      else
      {
        v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
        v14 = 2;
      }
    }

LABEL_17:
    v7 += v14;
    *(a2 + 4 * v6) = v13;
    if (v10 == v6)
    {
      goto LABEL_30;
    }

    if (__OFADD__(++v6, 1))
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  a3 = v6;
LABEL_30:
  *result = a4;
  result[1] = a5;
  result[2] = v7;
  result[3] = v5;
  return a3;
}

void *sub_26F44749C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0138, &qword_26F4A6668);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

unint64_t sub_26F447520(uint64_t a1, uint64_t a2)
{
  v2 = sub_26F4A02A8();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26F44756C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F4475B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_26F49D768();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  v29 = a1;
  v30 = a2;
  sub_26F49D748();
  sub_26F3BDC0C();
  v12 = sub_26F49FFE8();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  v29 = v12;
  v30 = v14;
  v16 = sub_26F4A0018();
  v18 = v17;

  v19 = sub_26F447060(v16, v18);
  if (v19)
  {
    v20 = v19;
    v21 = sub_26F44749C(v19, 0);
    v22 = sub_26F44729C(&v29, (v21 + 4), v20, v16, v18);

    if (v22 != v20)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v24 = sub_26F49D738();
  MEMORY[0x28223BE20](v24);
  v28[-2] = v8;
  v25 = sub_26F4431A0(sub_26F44789C, &v28[-4], v21);
  v29 = 0;
  v30 = 0xE000000000000000;
  v28[0] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A88, &qword_26F4A8D50);
  sub_26F3B18CC(&qword_2806E0A90, &qword_2806E0A88, &qword_26F4A8D50, MEMORY[0x277D83970]);
  sub_26F49F998();

  v26 = v29;
  v27 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v27 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    v26 = 0;
  }

  v15(v8, v5);
  return v26;
}

uint64_t sub_26F4478D8()
{
  sub_26F4468A8(v0 + OBJC_IVAR____TtC13TranslationUI18TextModelContainer_textModel);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TextModelContainer(uint64_t a1)
{
  result = qword_2806E0AA0;
  if (!qword_2806E0AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F447990(uint64_t a1)
{
  result = type metadata accessor for TextModel(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26F447A20(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for TextModel(0);
  MEMORY[0x28223BE20](v7);
  v116 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v104 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v119 = &v104 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v104 - v18;
  v20 = *(v4 + 112);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_79;
  }

  *(v4 + 112) = v22;
  v118 = v7[7];
  sub_26F3E718C(a1 + v118, &v104 - v18);
  v23 = sub_26F49DAB8();
  v24 = *(v23 - 8);
  v120 = *(v24 + 48);
  if (v120(v19, 1, v23) == 1)
  {
    sub_26F3B6B4C(v19, &qword_2806DEFD8, &qword_26F4A3670);
    return 0;
  }

  v114 = v14;
  v111 = a2;
  sub_26F49D988();
  v25 = a1;
  v26 = v4;
  v113 = *(v24 + 8);
  v113(v19, v23);
  sub_26F4A0578();
  sub_26F49F9A8();

  v110 = v7[9];
  sub_26F49D988();
  sub_26F49F9A8();

  v117 = v7;
  v27 = v7[6];
  v28 = v25;
  v29 = (v25 + v27);
  v31 = *v29;
  v30 = v29[1];
  sub_26F4A0548();
  v112 = v31;
  v109 = v30;
  sub_26F49F9A8();
  v125 = v121[2];
  v126 = v121[3];
  v127 = v122;
  v123 = v121[0];
  v124 = v121[1];
  v32 = sub_26F4A0558();
  v115 = v26;
  v33 = *(v26 + 136);
  v34 = sub_26F404B4C();
  v35 = v33;
  v36 = sub_26F49FF28();
  v37 = [v35 objectForKey_];

  if (v37)
  {
    v38 = v28;
    v39 = v119;
    goto LABEL_6;
  }

  v108 = v32;
  if ((v111 & 1) == 0)
  {
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v60 = sub_26F49DCA8();
    __swift_project_value_buffer(v60, qword_280F67ED0);
    goto LABEL_26;
  }

  v106 = v34;
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v42 = sub_26F49DCA8();
  v43 = __swift_project_value_buffer(v42, qword_280F67ED0);
  v38 = v28;
  sub_26F448DA4(v28, v11, type metadata accessor for TextModel);
  v107 = v43;
  v44 = sub_26F49DC88();
  v45 = sub_26F49FDC8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v121[0] = v47;
    *v46 = 136642819;
    v48 = &v11[v117[6]];
    v49 = v48[1];
    v105 = *v48;

    sub_26F4468A8(v11);
    v50 = sub_26F3B38D0(v105, v49, v121);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_26F39E000, v44, v45, "TextTranslationCache sourceString:\t%{sensitive}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x274391F70](v47, -1, -1);
    MEMORY[0x274391F70](v46, -1, -1);
  }

  else
  {

    sub_26F4468A8(v11);
  }

  v39 = v119;
  v65 = v116;
  sub_26F448DA4(v38, v116, type metadata accessor for TextModel);
  v66 = sub_26F49DC88();
  v67 = sub_26F49FDC8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *&v121[0] = v119;
    *v68 = 136642819;
    v69 = sub_26F4475B4(*(v65 + v117[6]), *(v65 + v117[6] + 8), v65 + v117[7]);
    v71 = v65;
    if (v70)
    {
      v72 = v69;
    }

    else
    {
      v72 = 6369134;
    }

    if (v70)
    {
      v73 = v70;
    }

    else
    {
      v73 = 0xE300000000000000;
    }

    sub_26F4468A8(v71);
    v74 = sub_26F3B38D0(v72, v73, v121);

    *(v68 + 4) = v74;
    _os_log_impl(&dword_26F39E000, v66, v67, "TextTranslationCache sourceFuzzy:\t%{sensitive}s", v68, 0xCu);
    v75 = v119;
    __swift_destroy_boxed_opaque_existential_0(v119);
    MEMORY[0x274391F70](v75, -1, -1);
    MEMORY[0x274391F70](v68, -1, -1);
  }

  else
  {

    sub_26F4468A8(v65);
  }

  v76 = v115;
  v77 = v108;
  v78 = sub_26F444588(1);
  if ((v79 & 1) != 0 || v77 == v78)
  {
    v61 = sub_26F49DC88();
    v62 = sub_26F49FDC8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = "TextTranslationCache fuzzy key collision";
      goto LABEL_46;
    }

LABEL_47:

    return 0;
  }

  v80 = *(v76 + 136);
  v81 = sub_26F49FF28();
  v37 = [v80 objectForKey_];

  if (!v37)
  {
LABEL_26:
    v61 = sub_26F49DC88();
    v62 = sub_26F49FDC8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = "TextTranslationCache cache miss";
LABEL_46:
      _os_log_impl(&dword_26F39E000, v61, v62, v64, v63, 2u);
      MEMORY[0x274391F70](v63, -1, -1);
      goto LABEL_47;
    }

    goto LABEL_47;
  }

LABEL_6:
  sub_26F3E718C(v38 + v118, v39);
  if (v120(v39, 1, v23) == 1)
  {
    sub_26F3B6B4C(v39, &qword_2806DEFD8, &qword_26F4A3670);
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v40 = sub_26F49D988();
    v41 = v51;
    v113(v39, v23);
  }

  v52 = v112;
  v119 = v37;
  v53 = &v37[OBJC_IVAR____TtC13TranslationUI18TextModelContainer_textModel];
  v116 = v117[7];
  v54 = v114;
  sub_26F3E718C(&v53[v116], v114);
  if (v120(v54, 1, v23) == 1)
  {
    sub_26F3B6B4C(v54, &qword_2806DEFD8, &qword_26F4A3670);
    if (!v41)
    {
      goto LABEL_50;
    }

LABEL_66:

    goto LABEL_69;
  }

  v55 = sub_26F49D988();
  v56 = v54;
  v57 = v55;
  v59 = v58;
  v113(v56, v23);
  if (v41)
  {
    if (!v59)
    {
      goto LABEL_66;
    }

    if (v40 == v57 && v41 == v59)
    {
    }

    else
    {
      v82 = sub_26F4A0458();

      if ((v82 & 1) == 0)
      {
        goto LABEL_69;
      }
    }
  }

  else if (v59)
  {
    goto LABEL_66;
  }

LABEL_50:
  v83 = sub_26F49D988();
  v85 = v84;
  if (v83 == sub_26F49D988() && v85 == v86)
  {

    v88 = v52;
  }

  else
  {
    v89 = sub_26F4A0458();

    v88 = v52;
    if ((v89 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  v90 = &v53[v117[6]];
  v91 = v109;
  if (v88 == *v90 && v109 == *(v90 + 1))
  {
    goto LABEL_57;
  }

  result = sub_26F4A0458();
  if (result)
  {
    goto LABEL_57;
  }

  if ((v111 & 1) == 0)
  {
    goto LABEL_69;
  }

  v95 = sub_26F4475B4(v88, v91, v38 + v118);
  v97 = v96;
  result = sub_26F4475B4(*v90, *(v90 + 1), &v53[v116]);
  if (!v97)
  {
    if (!v98)
    {
      goto LABEL_57;
    }

    goto LABEL_66;
  }

  if (!v98)
  {

    v7 = 0;
LABEL_70:
    v92 = v115;
LABEL_71:
    a2 = *(v92 + 112);
    if (__ROR8__(0x8F5C28F5C28F5C29 * a2 + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL)
    {

      return v7;
    }

    v3 = *(v92 + 120);
    if (qword_280F66CB0 == -1)
    {
LABEL_74:
      v100 = sub_26F49DCA8();
      __swift_project_value_buffer(v100, qword_280F67ED0);
      v101 = sub_26F49DC88();
      v102 = sub_26F49FDC8();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 134349056;
        *(v103 + 4) = v3 / a2;
        _os_log_impl(&dword_26F39E000, v101, v102, "TextTranslationCache cache stats: %{public}f", v103, 0xCu);
        MEMORY[0x274391F70](v103, -1, -1);
      }

      return v7;
    }

LABEL_79:
    swift_once();
    goto LABEL_74;
  }

  if (v95 == result && v97 == v98)
  {

    goto LABEL_57;
  }

  v99 = sub_26F4A0458();

  if ((v99 & 1) == 0)
  {
LABEL_69:
    v7 = 0;
    goto LABEL_70;
  }

LABEL_57:
  v92 = v115;
  v93 = *(v115 + 120);
  v21 = __OFADD__(v93, 1);
  v94 = v93 + 1;
  if (!v21)
  {
    *(v115 + 120) = v94;
    v7 = *&v53[v117[8]];

    goto LABEL_71;
  }

  __break(1u);
  return result;
}

void *sub_26F4486D0(uint64_t a1, int a2)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB0, &qword_26F4A8DF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v30 = type metadata accessor for TextModel(0);
  MEMORY[0x28223BE20](v30);
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v12 = a1 + v25;
    v13 = *(v8 + 72);
    v28 = (v8 + 56);
    v26 = (v8 + 48);
    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_26F448DA4(v12, v10, type metadata accessor for TextModel);
      v14 = sub_26F447A20(v10, v31 & 1);
      if (v15)
      {
        v16 = v14;
        v17 = v15;
        v18 = v30;
        v19 = &v10[*(v30 + 32)];

        *v19 = v16;
        *(v19 + 1) = v17;
        sub_26F448DA4(v10, v5, type metadata accessor for TextModel);
        (*v28)(v5, 0, 1, v18);
        sub_26F4468A8(v10);
        if ((*v26)(v5, 1, v18) != 1)
        {
          sub_26F446958(v5, v27);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_26F4464E4(0, v29[2] + 1, 1, v29);
          }

          v21 = v29[2];
          v20 = v29[3];
          if (v21 >= v20 >> 1)
          {
            v29 = sub_26F4464E4((v20 > 1), v21 + 1, 1, v29);
          }

          v22 = v29;
          v29[2] = v21 + 1;
          sub_26F446958(v27, v22 + v25 + v21 * v13);
          goto LABEL_5;
        }
      }

      else
      {
        sub_26F4468A8(v10);
        (*v28)(v5, 1, 1, v30);
      }

      sub_26F3B6B4C(v5, &qword_2806E0AB0, &qword_26F4A8DF0);
LABEL_5:
      v12 += v13;
      if (!--v11)
      {
        return v29;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26F4489F8()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26F448A60@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TextModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VisualTranslationModel(0);
  v11 = *(a1 + v10[7]);
  v12 = sub_26F4486D0(v11, a2);
  v13 = v12[2];
  if (v13)
  {
    v40 = a1;
    v41 = a3;
    v14 = *(v6 + 20);
    v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = v12 + v15;
    v17 = *(v7 + 72);

    while (1)
    {
      sub_26F448DA4(v16, v9, type metadata accessor for TextModel);
      v18 = *&v9[v14];
      if ((v18 & 0x8000000000000000) != 0 || v18 >= v11[2])
      {
        sub_26F4468A8(v9);
      }

      else
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_26F4469BC(v11);
          v11 = result;
        }

        if (v18 >= v11[2])
        {
          __break(1u);
          return result;
        }

        sub_26F446A6C(v9, v11 + v15 + v18 * v17);
      }

      v16 += v17;
      if (!--v13)
      {

        v20 = sub_26F49D968();
        v21 = v41;
        v22 = v40;
        (*(*(v20 - 8) + 16))(v41, v40, v20);
        v23 = v22 + v10[5];
        v24 = *(v23 + 144);
        v50 = *(v23 + 128);
        v51 = v24;
        v52 = *(v23 + 160);
        v25 = *(v23 + 80);
        v46 = *(v23 + 64);
        v47 = v25;
        v26 = *(v23 + 112);
        v48 = *(v23 + 96);
        v49 = v26;
        v27 = *(v23 + 48);
        v44 = *(v23 + 32);
        v45 = v27;
        v28 = *(v23 + 16);
        v42 = *v23;
        v43 = v28;
        v29 = v10[6];
        v30 = sub_26F49D918();
        result = (*(*(v30 - 8) + 16))(v21 + v29, v22 + v29, v30);
        v31 = *(v22 + v10[8]);
        v32 = *(v22 + v10[9]);
        v33 = *(v22 + v10[10]);
        v34 = v21 + v10[5];
        v35 = v51;
        *(v34 + 128) = v50;
        *(v34 + 144) = v35;
        *(v34 + 160) = v52;
        v36 = v47;
        *(v34 + 64) = v46;
        *(v34 + 80) = v36;
        v37 = v49;
        *(v34 + 96) = v48;
        *(v34 + 112) = v37;
        v38 = v43;
        *v34 = v42;
        *(v34 + 16) = v38;
        v39 = v45;
        *(v34 + 32) = v44;
        *(v34 + 48) = v39;
        *(v21 + v10[7]) = v11;
        *(v21 + v10[8]) = v31;
        *(v21 + v10[9]) = v32;
        *(v21 + v10[10]) = v33;
        *(v21 + v10[11]) = 0;
        return result;
      }
    }
  }

  sub_26F448DA4(a1, a3, type metadata accessor for VisualTranslationModel);
}

uint64_t sub_26F448DA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_26F448E0C(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v13 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = type metadata accessor for TextModel(0);
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v14, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v13;
        }

        if (v14)
        {
          break;
        }

        if (v8 == v6)
        {
          return v13;
        }
      }

      MEMORY[0x2743908C0](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26F49FB18();
      }

      sub_26F49FB38();
      result = v15;
    }

    while (v8 != v6);
  }

  return result;
}

void sub_26F448F8C(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v49 = a6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AF0, &qword_26F4A8E78);
  MEMORY[0x28223BE20](v48);
  v12 = (&v46 - v11);
  v13 = type metadata accessor for TextModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v46 - v18;
  if (!a1)
  {
LABEL_10:
    if (a2)
    {
      v31 = a2;
    }

    else
    {
      sub_26F442974();
      v31 = swift_allocError();
      *v32 = 6;
    }

    v33 = a2;
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v34 = sub_26F49DCA8();
    __swift_project_value_buffer(v34, qword_280F67ED0);
    sub_26F44277C(a4, v15, type metadata accessor for TextModel);
    v35 = sub_26F49DC88();
    v36 = sub_26F49FDF8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136446210;
      sub_26F49D968();
      v47 = a5;
      v39 = a3;
      sub_26F450E5C();
      v40 = sub_26F4A0428();
      v42 = v41;
      sub_26F442914(v15, type metadata accessor for TextModel);
      v43 = sub_26F3B38D0(v40, v42, &aBlock);
      a3 = v39;
      a5 = v47;

      *(v37 + 4) = v43;
      _os_log_impl(&dword_26F39E000, v35, v36, "Requested translating model ID %{public}s of length ", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x274391F70](v38, -1, -1);
      MEMORY[0x274391F70](v37, -1, -1);
    }

    else
    {

      sub_26F442914(v15, type metadata accessor for TextModel);
    }

    *v12 = v31;
    swift_storeEnumTagMultiPayload();
    v44 = v31;
    a5(v12);

    sub_26F3B6B4C(v12, &qword_2806E0AF0, &qword_26F4A8E78);
    v54 = CGPointMake;
    v55 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v30 = &block_descriptor_27_0;
    goto LABEL_19;
  }

  v20 = [a1 translations];
  sub_26F3B0C24(0, &qword_2806E0AF8, 0x277CE1BF8);
  v21 = sub_26F49FAF8();

  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!sub_26F4A00A8())
  {
LABEL_9:

    goto LABEL_10;
  }

LABEL_4:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x274390F80](0, v21);
    goto LABEL_7;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v21 + 32);
LABEL_7:
    v23 = v22;

    sub_26F44277C(a4, v19, type metadata accessor for TextModel);
    v24 = [v23 formattedString];
    v25 = sub_26F49F8C8();
    v27 = v26;

    v28 = &v19[*(v13 + 32)];

    *v28 = v25;
    v28[1] = v27;
    [v23 confidence];
    *&v19[*(v13 + 40)] = v29;
    sub_26F44277C(v19, v12, type metadata accessor for TextModel);
    swift_storeEnumTagMultiPayload();
    a5(v12);

    sub_26F3B6B4C(v12, &qword_2806E0AF0, &qword_26F4A8E78);
    sub_26F442914(v19, type metadata accessor for TextModel);
    v54 = CGPointMake;
    v55 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v30 = &block_descriptor_30;
LABEL_19:
    v52 = sub_26F449538;
    v53 = v30;
    v45 = _Block_copy(&aBlock);
    [a3 setCompletionHandler_];
    _Block_release(v45);
    return;
  }

  __break(1u);
}

void sub_26F449538(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t static TextTranslationService.translate(_:strictLocales:taskHint:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TextModel(0);
  v62 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A08, &unk_26F4A89F0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v60 = &v45 - v13;
  v61 = sub_26F49D968();
  v63 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v58 = *a3;
  sub_26F49D958();
  v18 = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];
  v59 = v17;
  v19 = sub_26F49D928();
  v57 = [v18 startTranslationSessionWithSELFLoggingInvocationId_];

  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v20 = sub_26F49DCA8();
  __swift_project_value_buffer(v20, qword_280F67ED0);

  v21 = sub_26F49DC88();
  v22 = sub_26F49FDB8();
  if (os_log_type_enabled(v21, v22))
  {
    v53 = v22;
    v55 = v21;
    v23 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v65 = v52;
    *v23 = 134349314;
    v24 = *(a1 + 16);
    *(v23 + 4) = v24;

    v54 = v23;
    *(v23 + 12) = 2082;
    v25 = MEMORY[0x277D84F90];
    if (v24)
    {
      v46 = v12;
      v47 = v11;
      v49 = a2;
      v50 = v8;
      v51 = a4;
      v64 = MEMORY[0x277D84F90];
      sub_26F403488(0, v24, 0);
      v26 = v61;
      v27 = *(v62 + 80);
      v48 = a1;
      v28 = a1 + ((v27 + 32) & ~v27);
      v62 = *(v62 + 72);
      v25 = v64;
      v29 = (v63 + 16);
      v30 = v56;
      do
      {
        sub_26F44277C(v28, v10, type metadata accessor for TextModel);
        (*v29)(v30, v10, v26);
        sub_26F442914(v10, type metadata accessor for TextModel);
        v64 = v25;
        v32 = *(v25 + 16);
        v31 = *(v25 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_26F403488((v31 > 1), v32 + 1, 1);
          v25 = v64;
        }

        *(v25 + 16) = v32 + 1;
        (*(v63 + 32))(v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v32, v30, v26);
        v28 += v62;
        --v24;
      }

      while (v24);
      LOBYTE(a2) = v49;
      v11 = v47;
      a1 = v48;
      v12 = v46;
    }

    v34 = v61;
    v35 = MEMORY[0x274390900](v25, v61);
    v37 = v36;

    v38 = sub_26F3B38D0(v35, v37, &v65);

    v39 = v54;
    *(v54 + 14) = v38;
    v40 = v55;
    _os_log_impl(&dword_26F39E000, v55, v53, "Requested translating %{public}ld models: %{public}s", v39, 0x16u);
    v41 = v52;
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x274391F70](v41, -1, -1);
    MEMORY[0x274391F70](v39, -1, -1);
  }

  else
  {

    v34 = v61;
  }

  v42 = MEMORY[0x28223BE20](v33);
  *(&v45 - 4) = a1;
  *(&v45 - 24) = a2 & 1;
  *(&v45 - 23) = v58;
  v43 = v57;
  *(&v45 - 2) = v57;
  (*(v12 + 104))(v60, *MEMORY[0x277D85778], v11, v42);
  sub_26F49FC78();

  return (*(v63 + 8))(v59, v34);
}

void static TextTranslationService.translate(_:strictLocales:taskHint:selfLoggingInvocationId:)(uint64_t a1@<X0>, int a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TextModel(0);
  v57 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_26F49D968();
  v11 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A08, &unk_26F4A89F0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v55 = &v41 - v15;
  v54 = *a3;
  v16 = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];
  v17 = sub_26F49D928();
  v53 = [v16 startTranslationSessionWithSELFLoggingInvocationId_];

  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v18 = sub_26F49DCA8();
  __swift_project_value_buffer(v18, qword_280F67ED0);

  v19 = sub_26F49DC88();
  v20 = sub_26F49FDB8();
  if (os_log_type_enabled(v19, v20))
  {
    v47 = v20;
    v49 = v19;
    v50 = v14;
    v21 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v59 = v46;
    *v21 = 134349314;
    v22 = *(a1 + 16);
    *(v21 + 4) = v22;

    v48 = v21;
    *(v21 + 12) = 2082;
    v23 = MEMORY[0x277D84F90];
    if (v22)
    {
      v41 = v13;
      v43 = a2;
      v44 = v8;
      v45 = a4;
      v58 = MEMORY[0x277D84F90];
      sub_26F403488(0, v22, 0);
      v23 = v58;
      v24 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v42 = a1;
      v25 = a1 + v24;
      v26 = *(v57 + 72);
      v56 = v11 + 32;
      v57 = v26;
      v28 = v51;
      v27 = v52;
      do
      {
        sub_26F44277C(v25, v10, type metadata accessor for TextModel);
        (*(v11 + 16))(v28, v10, v27);
        sub_26F442914(v10, type metadata accessor for TextModel);
        v58 = v23;
        v30 = *(v23 + 16);
        v29 = *(v23 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_26F403488((v29 > 1), v30 + 1, 1);
          v23 = v58;
        }

        *(v23 + 16) = v30 + 1;
        (*(v11 + 32))(v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v30, v28, v27);
        v25 += v57;
        --v22;
      }

      while (v22);
      LOBYTE(a2) = v43;
      v13 = v41;
      a1 = v42;
    }

    v32 = MEMORY[0x274390900](v23, v52);
    v34 = v33;

    v35 = sub_26F3B38D0(v32, v34, &v59);

    v36 = v48;
    *(v48 + 14) = v35;
    v37 = v49;
    _os_log_impl(&dword_26F39E000, v49, v47, "Requested translating %{public}ld models: %{public}s", v36, 0x16u);
    v38 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x274391F70](v38, -1, -1);
    MEMORY[0x274391F70](v36, -1, -1);

    v14 = v50;
  }

  else
  {
  }

  v39 = MEMORY[0x28223BE20](v31);
  *(&v41 - 4) = a1;
  *(&v41 - 24) = a2 & 1;
  *(&v41 - 23) = v54;
  v40 = v53;
  *(&v41 - 2) = v53;
  (*(v14 + 104))(v55, *MEMORY[0x277D85778], v13, v39);
  sub_26F49FC78();
}

uint64_t sub_26F44A0E8(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v23 = a3;
  v24 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_26F49FC08();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v9 + 80) + 41) & ~*(v9 + 80);
  v18 = v17 + v10;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = a2;
  *(v19 + 40) = v23;
  (*(v9 + 32))(v19 + v17, v12, v8);
  *(v19 + v18) = v24 & 1;
  *(v19 + (v18 & 0xFFFFFFFFFFFFFFF8) + 8) = a5;

  v20 = a5;
  sub_26F40570C(0, 0, v15, &unk_26F4A8E68, v19);
}

uint64_t sub_26F44A310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 560) = a8;
  *(v8 + 850) = a7;
  *(v8 + 552) = a6;
  *(v8 + 849) = a5;
  *(v8 + 544) = a4;
  *(v8 + 568) = type metadata accessor for Signpost(0);
  *(v8 + 576) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A20, &qword_26F4A8A50);
  *(v8 + 584) = v9;
  *(v8 + 592) = *(v9 - 8);
  *(v8 + 600) = swift_task_alloc();
  v10 = type metadata accessor for TextModel(0);
  *(v8 + 608) = v10;
  *(v8 + 616) = *(v10 - 8);
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = swift_task_alloc();
  v11 = sub_26F49DAB8();
  *(v8 + 672) = v11;
  *(v8 + 680) = *(v11 - 8);
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F44A5B4, 0, 0);
}

uint64_t sub_26F44A5B4()
{
  v169 = v0;
  v1 = *(v0 + 544);
  *(v0 + 536) = v1;
  v2 = *(v0 + 768);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  if (!*(v1 + 16))
  {
    (*(v3 + 56))(*(v0 + 768), 1, 1, *(v0 + 672));
LABEL_10:
    v24 = *(v0 + 768);

    sub_26F3B6B4C(v24, &qword_2806DEFD8, &qword_26F4A3670);
    if (qword_280F66CB0 == -1)
    {
LABEL_11:
      v25 = sub_26F49DCA8();
      *(v0 + 776) = __swift_project_value_buffer(v25, qword_280F67ED0);
      v26 = sub_26F49DC88();
      v27 = sub_26F49FDC8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_26F39E000, v26, v27, "Performing source LID since sourceLocale is nil", v28, 2u);
        MEMORY[0x274391F70](v28, -1, -1);
      }

      v29 = swift_task_alloc();
      v167[98] = v29;
      *v29 = v167;
      v29[1] = sub_26F44BABC;
      v30 = v167[68];

      return sub_26F4501F4(v30);
    }

LABEL_114:
    swift_once();
    goto LABEL_11;
  }

  v5 = *(*(v0 + 616) + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = v1 + *(*(v0 + 608) + 28);
  sub_26F3B8DD4(v7 + v6, *(v0 + 768), &qword_2806DEFD8, &qword_26F4A3670);
  v8 = *(v3 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    goto LABEL_10;
  }

  v9 = *(v0 + 768);

  sub_26F3B6B4C(v9, &qword_2806DEFD8, &qword_26F4A3670);
  v10 = v0;
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v163 = sub_26F49DCA8();
  __swift_project_value_buffer(v163, qword_280F67ED0);
  v11 = sub_26F49DC88();
  v12 = sub_26F49FDB8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v168 = v165;
    *v13 = 136446210;
    v14 = v10[94];
    if (*(v1 + 16))
    {
      v15 = v167[84];
      sub_26F3B8DD4(v7 + v6, v14, &qword_2806DEFD8, &qword_26F4A3670);
      v16 = v15;
      v10 = v167;
      if (v8(v14, 1, v16) != 1)
      {
        v17 = v167[94];
        v18 = v167[85];
        v19 = v167[84];
        v167[62] = sub_26F49D988();
        v167[63] = v20;
        v167[64] = 45;
        v167[65] = 0xE100000000000000;
        v167[30] = 95;
        v167[31] = 0xE100000000000000;
        sub_26F3BDC0C();
        v21 = sub_26F49FFF8();
        v23 = v22;
        v10 = v167;

        (*(v18 + 8))(v17, v19);
LABEL_18:
        v32 = sub_26F3B38D0(v21, v23, &v168);

        *(v13 + 4) = v32;
        _os_log_impl(&dword_26F39E000, v11, v12, "Source Locale already set to %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v165);
        MEMORY[0x274391F70](v165, -1, -1);
        MEMORY[0x274391F70](v13, -1, -1);
        goto LABEL_19;
      }
    }

    else
    {
      (*(v10[85] + 56))(v10[94], 1, 1, v10[84]);
    }

    v21 = 7104878;
    sub_26F3B6B4C(v10[94], &qword_2806DEFD8, &qword_26F4A3670);
    v23 = 0xE300000000000000;
    goto LABEL_18;
  }

LABEL_19:

  v0 = v10[68];
  v10[100] = v0;
  if (*(v10 + 849))
  {
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v163, qword_280F67ED0);
    v33 = sub_26F49DC88();
    v34 = sub_26F49FDB8();
    v166 = v0;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v168 = v36;
      *v35 = 136446210;
      if (*(v0 + 16))
      {
        v37 = v10[87];
        v38 = v10[85];
        v39 = v10[84];
        v40 = *(v10[77] + 80);
        (*(v38 + 16))(v37, v166 + *(v10[76] + 36) + ((v40 + 32) & ~v40), v39);
        v10[50] = sub_26F49D988();
        v10[51] = v41;
        v10[52] = 45;
        v10[53] = 0xE100000000000000;
        v10[54] = 95;
        v10[55] = 0xE100000000000000;
        sub_26F3BDC0C();
        v42 = sub_26F49FFF8();
        v44 = v43;

        (*(v38 + 8))(v37, v39);
        v0 = v166;
      }

      else
      {
        v42 = 7104878;
        v44 = 0xE300000000000000;
      }

      v51 = sub_26F3B38D0(v42, v44, &v168);

      *(v35 + 4) = v51;
      _os_log_impl(&dword_26F39E000, v33, v34, "Using strict locales, treating target as %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x274391F70](v36, -1, -1);
      MEMORY[0x274391F70](v35, -1, -1);

      v10 = v167;
    }

    else
    {
    }

    v52 = *(v0 + 16);

    if (v52)
    {
      v53 = 0;
      v54 = v10[77];
      v55 = v10[76];
      v56 = MEMORY[0x277D84F90];
      v160 = v55;
      v148 = (v10[85] + 48);
      v150 = v52;
      v146 = v54;
      while (1)
      {
        if (v53 >= *(v0 + 16))
        {
          __break(1u);
          goto LABEL_112;
        }

        v57 = v10[83];
        v58 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v59 = *(v54 + 72);
        sub_26F44277C(v0 + v58 + v59 * v53, v57, type metadata accessor for TextModel);
        v60 = v10[83];
        if (*(v57 + v55[11]))
        {
          goto LABEL_41;
        }

        v65 = (v60 + v55[6]);
        v67 = *v65;
        v66 = v65[1];
        v68 = v67 & 0xFFFFFFFFFFFFLL;
        if (!((v66 & 0x2000000000000000) != 0 ? HIBYTE(v66) & 0xF : v68))
        {
          goto LABEL_41;
        }

        v70 = v10[93];
        v71 = v10;
        v72 = v10[84];
        v157 = v60;
        v152 = v55[7];
        sub_26F3B8DD4(v60 + v152, v70, &qword_2806DEFD8, &qword_26F4A3670);
        v154 = *v148;
        LODWORD(v72) = (*v148)(v70, 1, v72);
        sub_26F3B6B4C(v70, &qword_2806DEFD8, &qword_26F4A3670);
        if (v72 == 1)
        {
          break;
        }

        v73 = v71[92];
        v74 = v71[84];
        sub_26F3B8DD4(v157 + v152, v73, &qword_2806DEFD8, &qword_26F4A3670);
        LODWORD(v74) = v154(v73, 1, v74);
        sub_26F3B6B4C(v73, &qword_2806DEFD8, &qword_26F4A3670);
        v60 = v71[83];
        v55 = v160;
        if (v74 != 1)
        {
          v75 = (v60 + v160[8]);
          v76 = v75[1];
          if (v76)
          {
            v77 = *v75 & 0xFFFFFFFFFFFFLL;
            if ((v76 & 0x2000000000000000) != 0 ? HIBYTE(v76) & 0xF : v77)
            {
              v10 = v167;
              goto LABEL_52;
            }
          }
        }

        sub_26F442914(v60, type metadata accessor for TextModel);
        v10 = v167;
        v0 = v166;
        v52 = v150;
        v54 = v146;
LABEL_38:
        if (v52 == ++v53)
        {
          goto LABEL_61;
        }
      }

      v60 = v71[83];
      v10 = v71;
LABEL_52:
      v52 = v150;
      v54 = v146;
LABEL_41:
      sub_26F450C0C(v60, v10[81], type metadata accessor for TextModel);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v168 = v56;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26F403444(0, *(v56 + 16) + 1, 1);
        v56 = v168;
      }

      v63 = *(v56 + 16);
      v62 = *(v56 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_26F403444((v62 > 1), v63 + 1, 1);
        v56 = v168;
      }

      v64 = v10[81];
      *(v56 + 16) = v63 + 1;
      sub_26F450C0C(v64, v56 + v58 + v63 * v59, type metadata accessor for TextModel);
      v0 = v166;
      v55 = v160;
      goto LABEL_38;
    }

    v56 = MEMORY[0x277D84F90];
LABEL_61:

    v161 = *(v56 + 16);
    if (v161)
    {
      v79 = 0;
      v158 = v167[77];
      v155 = v56 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
      v0 = v167[74] + 8;
      while (v79 < *(v56 + 16))
      {
        sub_26F44277C(v155 + *(v158 + 72) * v79, v167[82], type metadata accessor for TextModel);
        if (qword_280F66CB0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v163, qword_280F67ED0);
        v84 = sub_26F49DC88();
        v85 = sub_26F49FDC8();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_26F39E000, v84, v85, "Yield untranslatable or already translated)", v86, 2u);
          MEMORY[0x274391F70](v86, -1, -1);
        }

        ++v79;
        v80 = v167[82];
        v81 = v167[80];
        v82 = v167[75];
        v83 = v167[73];

        sub_26F44277C(v80, v81, type metadata accessor for TextModel);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
        sub_26F49FC38();
        (*v0)(v82, v83);
        sub_26F442914(v80, type metadata accessor for TextModel);
        if (v161 == v79)
        {
          goto LABEL_69;
        }
      }

LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

LABEL_69:

    v0 = v166;
    v87 = *(v166 + 16);

    if (v87)
    {
      v88 = 0;
      v89 = v167;
      v90 = v167[77];
      v91 = v167[76];
      v149 = (v167[85] + 48);
      v92 = MEMORY[0x277D84F90];
      v151 = v87;
      v159 = v91;
      v147 = v90;
      while (1)
      {
        if (v88 >= *(v0 + 16))
        {
          goto LABEL_113;
        }

        v94 = v89[79];
        v95 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v96 = *(v90 + 72);
        sub_26F44277C(v0 + v95 + v96 * v88, v94, type metadata accessor for TextModel);
        v93 = v89[79];
        if (!*(v94 + v91[11]))
        {
          v97 = (v93 + v91[6]);
          v99 = *v97;
          v98 = v97[1];
          v100 = v99 & 0xFFFFFFFFFFFFLL;
          if ((v98 & 0x2000000000000000) != 0 ? HIBYTE(v98) & 0xF : v100)
          {
            v102 = v89[91];
            v103 = v89;
            v104 = v89[84];
            v105 = v91[7];
            v156 = v93;
            sub_26F3B8DD4(v93 + v105, v102, &qword_2806DEFD8, &qword_26F4A3670);
            v153 = *v149;
            LODWORD(v104) = (*v149)(v102, 1, v104);
            sub_26F3B6B4C(v102, &qword_2806DEFD8, &qword_26F4A3670);
            if (v104 == 1)
            {
              v93 = v103[79];
              v89 = v103;
              v0 = v166;
              v91 = v159;
            }

            else
            {
              v106 = v103[90];
              v107 = v103[84];
              sub_26F3B8DD4(v156 + v105, v106, &qword_2806DEFD8, &qword_26F4A3670);
              LODWORD(v107) = v153(v106, 1, v107);
              sub_26F3B6B4C(v106, &qword_2806DEFD8, &qword_26F4A3670);
              v93 = v103[79];
              v91 = v159;
              if (v107 == 1 || (v108 = (v93 + v159[8]), (v109 = v108[1]) == 0) || ((v110 = *v108 & 0xFFFFFFFFFFFFLL, (v109 & 0x2000000000000000) != 0) ? (v111 = HIBYTE(v109) & 0xF) : (v111 = v110), !v111))
              {
                v89 = v167;
                sub_26F450C0C(v93, v167[78], type metadata accessor for TextModel);
                v112 = swift_isUniquelyReferenced_nonNull_native();
                v168 = v92;
                v87 = v151;
                v90 = v147;
                if ((v112 & 1) == 0)
                {
                  sub_26F403444(0, *(v92 + 16) + 1, 1);
                  v92 = v168;
                }

                v114 = *(v92 + 16);
                v113 = *(v92 + 24);
                if (v114 >= v113 >> 1)
                {
                  sub_26F403444((v113 > 1), v114 + 1, 1);
                  v92 = v168;
                }

                v115 = v167[78];
                *(v92 + 16) = v114 + 1;
                sub_26F450C0C(v115, v92 + v95 + v114 * v96, type metadata accessor for TextModel);
                v0 = v166;
                v91 = v159;
                goto LABEL_74;
              }

              v89 = v167;
              v0 = v166;
            }

            v87 = v151;
            v90 = v147;
          }
        }

        sub_26F442914(v93, type metadata accessor for TextModel);
LABEL_74:
        if (v87 == ++v88)
        {
          goto LABEL_95;
        }
      }
    }

    v92 = MEMORY[0x277D84F90];
    v89 = v167;
LABEL_95:
    v89[104] = v92;
    swift_bridgeObjectRelease_n();
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v89[105] = __swift_project_value_buffer(v163, qword_280F67ED0);
    swift_bridgeObjectRetain_n();
    v116 = v89;
    v117 = sub_26F49DC88();
    v118 = sub_26F49FDB8();
    if (!os_log_type_enabled(v117, v118))
    {

LABEL_108:
      v144 = objc_opt_self();
      v167[2] = v167;
      v167[7] = v167 + 106;
      v167[3] = sub_26F44DDDC;
      v145 = swift_continuation_init();
      v167[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0298, &unk_26F4A6C70);
      v167[10] = MEMORY[0x277D85DD0];
      v167[11] = 1107296256;
      v167[12] = sub_26F48828C;
      v167[13] = &block_descriptor_11;
      v167[14] = v145;
      [v144 onDeviceModeEnabledWithDedicatedMachPort:1 completion:v167 + 10];

      return MEMORY[0x282200938](v167 + 2);
    }

    v119 = 7104878;
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v168 = v121;
    *v120 = 134218498;
    *(v120 + 4) = *(v92 + 16);
    *(v120 + 12) = 2082;
    v122 = *(v92 + 16);
    v123 = v92;
    v124 = v116[89];
    v125 = v116[85];
    v126 = v116[84];
    v162 = v123;
    if (v122)
    {
      v127 = *(v116[77] + 80);
      sub_26F3B8DD4(v123 + *(v116[76] + 28) + ((v127 + 32) & ~v127), v124, &qword_2806DEFD8, &qword_26F4A3670);
      if ((*(v125 + 48))(v124, 1, v126) != 1)
      {
        v128 = v116[89];
        v129 = v116[85];
        v164 = v116[84];
        v116[38] = sub_26F49D988();
        v116[39] = v130;
        v116[40] = 45;
        v116[41] = 0xE100000000000000;
        v116[42] = 95;
        v116[43] = 0xE100000000000000;
        sub_26F3BDC0C();
        v131 = sub_26F49FFF8();
        v133 = v132;

        (*(v129 + 8))(v128, v164);
LABEL_104:

        v134 = sub_26F3B38D0(v131, v133, &v168);

        *(v120 + 14) = v134;
        *(v120 + 22) = 2082;
        if (*(v162 + 16))
        {
          v135 = v167[86];
          v136 = v167[85];
          v137 = v167[84];
          v138 = *(v167[77] + 80);
          (*(v136 + 16))(v135, v162 + *(v167[76] + 36) + ((v138 + 32) & ~v138), v137);
          v167[32] = sub_26F49D988();
          v167[33] = v139;
          v167[34] = 45;
          v167[35] = 0xE100000000000000;
          v167[36] = 95;
          v167[37] = 0xE100000000000000;
          sub_26F3BDC0C();
          v140 = sub_26F49FFF8();
          v142 = v141;
          v119 = v140;

          (*(v136 + 8))(v135, v137);
        }

        else
        {
          v142 = 0xE300000000000000;
        }

        v143 = sub_26F3B38D0(v119, v142, &v168);

        *(v120 + 24) = v143;
        _os_log_impl(&dword_26F39E000, v117, v118, "Translate %ld models from '%{public}s' to '%{public}s'", v120, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x274391F70](v121, -1, -1);
        MEMORY[0x274391F70](v120, -1, -1);

        goto LABEL_108;
      }
    }

    else
    {
      (*(v125 + 56))(v124, 1, 1, v126);
    }

    sub_26F3B6B4C(v116[89], &qword_2806DEFD8, &qword_26F4A3670);
    v133 = 0xE300000000000000;
    v131 = 7104878;
    goto LABEL_104;
  }

  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v10[101] = __swift_project_value_buffer(v163, qword_280F67ED0);
  v45 = sub_26F49DC88();
  v46 = sub_26F49FDC8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_26F39E000, v45, v46, "Validating target locale due to non-strict", v47, 2u);
    MEMORY[0x274391F70](v47, -1, -1);
  }

  v48 = swift_task_alloc();
  v167[102] = v48;
  *(v48 + 16) = v0;
  v49 = swift_task_alloc();
  v167[103] = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB8, &unk_26F4A8E10);
  *v49 = v167;
  v49[1] = sub_26F44CE64;

  return MEMORY[0x2822007B8](v167 + 66, 0, 0, 0xD000000000000018, 0x800000026F4AE660, sub_26F450EC8, v48, v50);
}

uint64_t sub_26F44BABC(uint64_t a1)
{
  *(*v1 + 792) = a1;

  return MEMORY[0x2822009F8](sub_26F44BBDC, 0, 0);
}

uint64_t sub_26F44BBDC()
{
  v161 = v0;
  v1 = *(v0 + 792);

  *(v0 + 536) = v1;
  v2 = sub_26F49DC88();
  v3 = sub_26F49FDB8();
  v159 = v0;
  if (!os_log_type_enabled(v2, v3))
  {

    goto LABEL_9;
  }

  v4 = *(v0 + 792);
  v5 = v0;
  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v160 = v7;
  *v6 = 136446210;
  if (!*(v4 + 16))
  {
    (*(*(v0 + 680) + 56))(*(v0 + 760), 1, 1, *(v0 + 672));
    goto LABEL_7;
  }

  v8 = *(v0 + 760);
  v9 = *(v0 + 680);
  v10 = v5[84];
  v11 = *(v5[77] + 80);
  sub_26F3B8DD4(v5[99] + *(v5[76] + 28) + ((v11 + 32) & ~v11), v5[95], &qword_2806DEFD8, &qword_26F4A3670);
  if ((*(v9 + 48))(v8, 1, v10) == 1)
  {
LABEL_7:
    v16 = 7104878;
    sub_26F3B6B4C(v5[95], &qword_2806DEFD8, &qword_26F4A3670);
    v18 = 0xE300000000000000;
    goto LABEL_8;
  }

  v12 = v5[95];
  v13 = v5[85];
  v14 = v5[84];
  v5[56] = sub_26F49D988();
  v5[57] = v15;
  v5[58] = 45;
  v5[59] = 0xE100000000000000;
  v5[60] = 95;
  v5[61] = 0xE100000000000000;
  sub_26F3BDC0C();
  v16 = sub_26F49FFF8();
  v18 = v17;

  (*(v13 + 8))(v12, v14);
LABEL_8:
  v19 = sub_26F3B38D0(v16, v18, &v160);

  *(v6 + 4) = v19;
  _os_log_impl(&dword_26F39E000, v2, v3, "Source LID result: %{public}s", v6, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v7);
  MEMORY[0x274391F70](v7, -1, -1);
  MEMORY[0x274391F70](v6, -1, -1);

  v0 = v159;
LABEL_9:
  v20 = *(v0 + 792);
  *(v0 + 800) = v20;
  if (*(v0 + 849))
  {
    v158 = v20;
    if (qword_280F66CB0 != -1)
    {
      goto LABEL_103;
    }

    while (1)
    {
      v156 = sub_26F49DCA8();
      __swift_project_value_buffer(v156, qword_280F67ED0);
      v21 = sub_26F49DC88();
      v22 = sub_26F49FDB8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v160 = v24;
        *v23 = 136446210;
        if (*(v158 + 16))
        {
          v25 = *(v0 + 696);
          v26 = *(v0 + 680);
          v152 = *(v0 + 672);
          v27 = *(*(v0 + 616) + 80);
          (*(v26 + 16))(v25, v158 + *(*(v0 + 608) + 36) + ((v27 + 32) & ~v27));
          *(v0 + 400) = sub_26F49D988();
          *(v0 + 408) = v28;
          *(v0 + 416) = 45;
          *(v0 + 424) = 0xE100000000000000;
          *(v0 + 432) = 95;
          *(v0 + 440) = 0xE100000000000000;
          sub_26F3BDC0C();
          v29 = sub_26F49FFF8();
          v31 = v30;

          (*(v26 + 8))(v25, v152);
        }

        else
        {
          v29 = 7104878;
          v31 = 0xE300000000000000;
        }

        v39 = sub_26F3B38D0(v29, v31, &v160);

        *(v23 + 4) = v39;
        _os_log_impl(&dword_26F39E000, v21, v22, "Using strict locales, treating target as %{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x274391F70](v24, -1, -1);
        MEMORY[0x274391F70](v23, -1, -1);

        v0 = v159;
      }

      else
      {
      }

      v40 = v158;
      v41 = *(v158 + 16);

      v149 = v41;
      if (v41)
      {
        v42 = 0;
        v43 = *(v0 + 616);
        v44 = *(v0 + 608);
        v45 = MEMORY[0x277D84F90];
        v153 = v44;
        v138 = v43;
        v140 = (*(v0 + 680) + 48);
        while (1)
        {
          if (v42 >= *(v40 + 16))
          {
            __break(1u);
            goto LABEL_101;
          }

          v46 = *(v0 + 664);
          v47 = (*(v43 + 80) + 32) & ~*(v43 + 80);
          v48 = *(v43 + 72);
          sub_26F44277C(v40 + v47 + v48 * v42, v46, type metadata accessor for TextModel);
          v49 = *(v0 + 664);
          if (*(v46 + v44[11]))
          {
            goto LABEL_30;
          }

          v54 = (v49 + v44[6]);
          v56 = *v54;
          v55 = v54[1];
          v57 = v56 & 0xFFFFFFFFFFFFLL;
          if (!((v55 & 0x2000000000000000) != 0 ? HIBYTE(v55) & 0xF : v57))
          {
            goto LABEL_30;
          }

          v59 = *(v0 + 744);
          v60 = *(v0 + 672);
          v146 = *(v0 + 664);
          v142 = v44[7];
          sub_26F3B8DD4(v49 + v142, v59, &qword_2806DEFD8, &qword_26F4A3670);
          v144 = *v140;
          LODWORD(v60) = (*v140)(v59, 1, v60);
          sub_26F3B6B4C(v59, &qword_2806DEFD8, &qword_26F4A3670);
          if (v60 == 1)
          {
            break;
          }

          v61 = *(v0 + 736);
          v62 = *(v0 + 672);
          sub_26F3B8DD4(v146 + v142, v61, &qword_2806DEFD8, &qword_26F4A3670);
          LODWORD(v62) = v144(v61, 1, v62);
          sub_26F3B6B4C(v61, &qword_2806DEFD8, &qword_26F4A3670);
          v49 = *(v0 + 664);
          v44 = v153;
          if (v62 != 1)
          {
            v63 = (v49 + v153[8]);
            v64 = v63[1];
            if (v64)
            {
              v65 = *v63 & 0xFFFFFFFFFFFFLL;
              if ((v64 & 0x2000000000000000) != 0 ? HIBYTE(v64) & 0xF : v65)
              {
                v0 = v159;
                goto LABEL_41;
              }
            }
          }

          sub_26F442914(v49, type metadata accessor for TextModel);
          v0 = v159;
          v40 = v158;
          v43 = v138;
LABEL_27:
          if (v149 == ++v42)
          {
            goto LABEL_50;
          }
        }

        v49 = *(v0 + 664);
LABEL_41:
        v40 = v158;
        v43 = v138;
LABEL_30:
        sub_26F450C0C(v49, *(v0 + 648), type metadata accessor for TextModel);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v160 = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26F403444(0, *(v45 + 16) + 1, 1);
          v45 = v160;
        }

        v52 = *(v45 + 16);
        v51 = *(v45 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_26F403444((v51 > 1), v52 + 1, 1);
          v45 = v160;
        }

        v53 = *(v0 + 648);
        *(v45 + 16) = v52 + 1;
        sub_26F450C0C(v53, v45 + v47 + v52 * v48, type metadata accessor for TextModel);
        v44 = v153;
        goto LABEL_27;
      }

      v45 = MEMORY[0x277D84F90];
LABEL_50:

      v154 = *(v45 + 16);
      if (!v154)
      {
        break;
      }

      v67 = 0;
      v150 = v159[77];
      v147 = v45 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
      v0 = v159[74] + 8;
      while (v67 < *(v45 + 16))
      {
        sub_26F44277C(v147 + *(v150 + 72) * v67, v159[82], type metadata accessor for TextModel);
        if (qword_280F66CB0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v156, qword_280F67ED0);
        v72 = sub_26F49DC88();
        v73 = sub_26F49FDC8();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_26F39E000, v72, v73, "Yield untranslatable or already translated)", v74, 2u);
          MEMORY[0x274391F70](v74, -1, -1);
        }

        ++v67;
        v68 = v159[82];
        v69 = v159[80];
        v70 = v159[75];
        v71 = v159[73];

        sub_26F44277C(v68, v69, type metadata accessor for TextModel);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
        sub_26F49FC38();
        (*v0)(v70, v71);
        sub_26F442914(v68, type metadata accessor for TextModel);
        v40 = v158;
        if (v154 == v67)
        {
          goto LABEL_58;
        }
      }

LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      swift_once();
    }

LABEL_58:

    v0 = *(v40 + 16);

    if (v0)
    {
      v75 = 0;
      v76 = v159;
      v77 = v159[77];
      v78 = v159[76];
      v139 = (v159[85] + 48);
      v79 = MEMORY[0x277D84F90];
      v141 = v77;
      v143 = v0;
      v151 = v78;
      while (1)
      {
        if (v75 >= *(v40 + 16))
        {
          goto LABEL_102;
        }

        v81 = v76[79];
        v82 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v83 = *(v77 + 72);
        sub_26F44277C(v40 + v82 + v83 * v75, v81, type metadata accessor for TextModel);
        v80 = v76[79];
        if (!*(v81 + v78[11]))
        {
          v84 = (v80 + v78[6]);
          v86 = *v84;
          v85 = v84[1];
          v87 = v86 & 0xFFFFFFFFFFFFLL;
          if ((v85 & 0x2000000000000000) != 0 ? HIBYTE(v85) & 0xF : v87)
          {
            v89 = v76[91];
            v90 = v76;
            v91 = v76[84];
            v92 = v78[7];
            v148 = v80;
            sub_26F3B8DD4(v80 + v92, v89, &qword_2806DEFD8, &qword_26F4A3670);
            v145 = *v139;
            LODWORD(v91) = (*v139)(v89, 1, v91);
            sub_26F3B6B4C(v89, &qword_2806DEFD8, &qword_26F4A3670);
            if (v91 == 1)
            {
              v80 = v90[79];
              v76 = v90;
              v40 = v158;
              v78 = v151;
            }

            else
            {
              v93 = v90[90];
              v94 = v90[84];
              sub_26F3B8DD4(v148 + v92, v93, &qword_2806DEFD8, &qword_26F4A3670);
              LODWORD(v94) = v145(v93, 1, v94);
              sub_26F3B6B4C(v93, &qword_2806DEFD8, &qword_26F4A3670);
              v80 = v90[79];
              v78 = v151;
              if (v94 == 1 || (v95 = (v80 + v151[8]), (v96 = v95[1]) == 0) || ((v97 = *v95 & 0xFFFFFFFFFFFFLL, (v96 & 0x2000000000000000) != 0) ? (v98 = HIBYTE(v96) & 0xF) : (v98 = v97), !v98))
              {
                v76 = v159;
                sub_26F450C0C(v80, v159[78], type metadata accessor for TextModel);
                v99 = swift_isUniquelyReferenced_nonNull_native();
                v160 = v79;
                v40 = v158;
                v77 = v141;
                if ((v99 & 1) == 0)
                {
                  sub_26F403444(0, *(v79 + 16) + 1, 1);
                  v79 = v160;
                }

                v101 = *(v79 + 16);
                v100 = *(v79 + 24);
                if (v101 >= v100 >> 1)
                {
                  sub_26F403444((v100 > 1), v101 + 1, 1);
                  v79 = v160;
                }

                v102 = v159[78];
                *(v79 + 16) = v101 + 1;
                sub_26F450C0C(v102, v79 + v82 + v101 * v83, type metadata accessor for TextModel);
                v0 = v143;
                v78 = v151;
                goto LABEL_63;
              }

              v76 = v159;
              v40 = v158;
            }

            v0 = v143;
            v77 = v141;
          }
        }

        sub_26F442914(v80, type metadata accessor for TextModel);
LABEL_63:
        if (v0 == ++v75)
        {
          goto LABEL_84;
        }
      }
    }

    v79 = MEMORY[0x277D84F90];
    v76 = v159;
LABEL_84:
    v76[104] = v79;
    swift_bridgeObjectRelease_n();
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v76[105] = __swift_project_value_buffer(v156, qword_280F67ED0);
    swift_bridgeObjectRetain_n();
    v103 = sub_26F49DC88();
    v104 = sub_26F49FDB8();
    if (!os_log_type_enabled(v103, v104))
    {

LABEL_97:
      v131 = v76 + 2;
      v132 = v76 + 106;
      v133 = v76 + 10;
      v134 = v76;
      v135 = objc_opt_self();
      v134[2] = v134;
      v134[7] = v132;
      v134[3] = sub_26F44DDDC;
      v136 = swift_continuation_init();
      v134[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0298, &unk_26F4A6C70);
      v134[10] = MEMORY[0x277D85DD0];
      v134[11] = 1107296256;
      v134[12] = sub_26F48828C;
      v134[13] = &block_descriptor_11;
      v134[14] = v136;
      [v135 onDeviceModeEnabledWithDedicatedMachPort:1 completion:v133];

      return MEMORY[0x282200938](v131);
    }

    v105 = 7104878;
    v106 = v76;
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v160 = v108;
    *v107 = 134218498;
    *(v107 + 4) = *(v79 + 16);
    *(v107 + 12) = 2082;
    v109 = *(v79 + 16);
    v110 = v79;
    v111 = v106[89];
    v112 = v106[85];
    v113 = v106[84];
    v155 = v110;
    if (v109)
    {
      v114 = *(v106[77] + 80);
      sub_26F3B8DD4(v110 + *(v106[76] + 28) + ((v114 + 32) & ~v114), v111, &qword_2806DEFD8, &qword_26F4A3670);
      if ((*(v112 + 48))(v111, 1, v113) != 1)
      {
        v115 = v106[89];
        v116 = v106[85];
        v157 = v106[84];
        v106[38] = sub_26F49D988();
        v106[39] = v117;
        v106[40] = 45;
        v106[41] = 0xE100000000000000;
        v106[42] = 95;
        v106[43] = 0xE100000000000000;
        sub_26F3BDC0C();
        v118 = sub_26F49FFF8();
        v120 = v119;

        (*(v116 + 8))(v115, v157);
LABEL_93:

        v121 = sub_26F3B38D0(v118, v120, &v160);

        *(v107 + 14) = v121;
        *(v107 + 22) = 2082;
        if (*(v155 + 16))
        {
          v122 = v159[86];
          v123 = v159[85];
          v124 = v159[84];
          v125 = *(v159[77] + 80);
          (*(v123 + 16))(v122, v155 + *(v159[76] + 36) + ((v125 + 32) & ~v125), v124);
          v159[32] = sub_26F49D988();
          v159[33] = v126;
          v159[34] = 45;
          v159[35] = 0xE100000000000000;
          v159[36] = 95;
          v159[37] = 0xE100000000000000;
          sub_26F3BDC0C();
          v127 = sub_26F49FFF8();
          v129 = v128;
          v105 = v127;

          (*(v123 + 8))(v122, v124);
        }

        else
        {
          v129 = 0xE300000000000000;
        }

        v130 = sub_26F3B38D0(v105, v129, &v160);

        *(v107 + 24) = v130;
        _os_log_impl(&dword_26F39E000, v103, v104, "Translate %ld models from '%{public}s' to '%{public}s'", v107, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x274391F70](v108, -1, -1);
        MEMORY[0x274391F70](v107, -1, -1);

        v76 = v159;
        goto LABEL_97;
      }
    }

    else
    {
      (*(v112 + 56))(v111, 1, 1, v113);
    }

    sub_26F3B6B4C(v106[89], &qword_2806DEFD8, &qword_26F4A3670);
    v120 = 0xE300000000000000;
    v118 = 7104878;
    goto LABEL_93;
  }

  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v32 = sub_26F49DCA8();
  *(v0 + 808) = __swift_project_value_buffer(v32, qword_280F67ED0);
  v33 = sub_26F49DC88();
  v34 = sub_26F49FDC8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_26F39E000, v33, v34, "Validating target locale due to non-strict", v35, 2u);
    MEMORY[0x274391F70](v35, -1, -1);
  }

  v36 = swift_task_alloc();
  v159[102] = v36;
  *(v36 + 16) = v20;
  v37 = swift_task_alloc();
  v159[103] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB8, &unk_26F4A8E10);
  *v37 = v159;
  v37[1] = sub_26F44CE64;

  return MEMORY[0x2822007B8](v159 + 66, 0, 0, 0xD000000000000018, 0x800000026F4AE660, sub_26F450EC8, v36, v38);
}

uint64_t sub_26F44CE64()
{

  return MEMORY[0x2822009F8](sub_26F44CF98, 0, 0);
}

uint64_t sub_26F44CF98()
{
  v127 = v0;
  v2 = v0[66];
  swift_beginAccess();
  v0[67] = v2;

  v3 = sub_26F49DC88();
  v4 = sub_26F49FDB8();
  v124 = v2;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v2;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v126 = v7;
    *v6 = 136446210;
    if (*(v5 + 16))
    {
      v8 = v0[88];
      v9 = v0[85];
      v119 = v0[84];
      v10 = *(v0[77] + 80);
      (*(v9 + 16))(v8, v5 + *(v0[76] + 36) + ((v10 + 32) & ~v10));
      v0[44] = sub_26F49D988();
      v0[45] = v11;
      v0[46] = 45;
      v0[47] = 0xE100000000000000;
      v0[48] = 95;
      v0[49] = 0xE100000000000000;
      sub_26F3BDC0C();
      v12 = sub_26F49FFF8();
      v14 = v13;

      (*(v9 + 8))(v8, v119);
    }

    else
    {
      v12 = 7104878;
      v14 = 0xE300000000000000;
    }

    v1 = sub_26F3B38D0(v12, v14, &v126);

    *(v6 + 4) = v1;
    _os_log_impl(&dword_26F39E000, v3, v4, "Validated targetLocale to %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x274391F70](v7, -1, -1);
    MEMORY[0x274391F70](v6, -1, -1);

    v2 = v124;
  }

  else
  {
  }

  v15 = *(v2 + 16);

  v116 = v15;
  if (v15)
  {
    v16 = 0;
    v17 = v0[77];
    v18 = v0[76];
    v19 = MEMORY[0x277D84F90];
    v120 = v18;
    v105 = v17;
    v106 = (v0[85] + 48);
    while (1)
    {
      if (v16 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_83;
      }

      v20 = v0[83];
      v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v1 = *(v17 + 72);
      sub_26F44277C(v2 + v21 + v1 * v16, v20, type metadata accessor for TextModel);
      v22 = v0[83];
      if (*(v20 + v18[11]))
      {
        goto LABEL_13;
      }

      v27 = (v22 + v18[6]);
      v29 = *v27;
      v28 = v27[1];
      v30 = v29 & 0xFFFFFFFFFFFFLL;
      if (!((v28 & 0x2000000000000000) != 0 ? HIBYTE(v28) & 0xF : v30))
      {
        goto LABEL_13;
      }

      v32 = v0[93];
      v33 = v0[84];
      v113 = v0[83];
      v108 = v18[7];
      sub_26F3B8DD4(v22 + v108, v32, &qword_2806DEFD8, &qword_26F4A3670);
      v110 = *v106;
      LODWORD(v33) = (*v106)(v32, 1, v33);
      sub_26F3B6B4C(v32, &qword_2806DEFD8, &qword_26F4A3670);
      if (v33 == 1)
      {
        break;
      }

      v34 = v0[92];
      v35 = v0[84];
      sub_26F3B8DD4(v113 + v108, v34, &qword_2806DEFD8, &qword_26F4A3670);
      LODWORD(v35) = v110(v34, 1, v35);
      sub_26F3B6B4C(v34, &qword_2806DEFD8, &qword_26F4A3670);
      v22 = v0[83];
      v18 = v120;
      if (v35 != 1)
      {
        v36 = (v22 + v120[8]);
        v37 = v36[1];
        if (v37)
        {
          v38 = *v36 & 0xFFFFFFFFFFFFLL;
          if ((v37 & 0x2000000000000000) != 0 ? HIBYTE(v37) & 0xF : v38)
          {
            goto LABEL_24;
          }
        }
      }

      sub_26F442914(v22, type metadata accessor for TextModel);
      v2 = v124;
      v17 = v105;
LABEL_10:
      if (v116 == ++v16)
      {
        goto LABEL_33;
      }
    }

    v22 = v0[83];
LABEL_24:
    v2 = v124;
    v17 = v105;
LABEL_13:
    sub_26F450C0C(v22, v0[81], type metadata accessor for TextModel);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v126 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26F403444(0, *(v19 + 16) + 1, 1);
      v19 = v126;
    }

    v25 = *(v19 + 16);
    v24 = *(v19 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_26F403444((v24 > 1), v25 + 1, 1);
      v19 = v126;
    }

    v26 = v0[81];
    *(v19 + 16) = v25 + 1;
    sub_26F450C0C(v26, v19 + v21 + v25 * v1, type metadata accessor for TextModel);
    v18 = v120;
    goto LABEL_10;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_33:

  v121 = *(v19 + 16);
  if (v121)
  {
    v40 = 0;
    v117 = v0[77];
    v111 = (v0[74] + 8);
    v114 = v19 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
    while (v40 < *(v19 + 16))
    {
      sub_26F44277C(v114 + *(v117 + 72) * v40, v0[82], type metadata accessor for TextModel);
      if (qword_280F66CB0 != -1)
      {
        swift_once();
      }

      v45 = sub_26F49DCA8();
      __swift_project_value_buffer(v45, qword_280F67ED0);
      v46 = sub_26F49DC88();
      v47 = sub_26F49FDC8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_26F39E000, v46, v47, "Yield untranslatable or already translated)", v48, 2u);
        MEMORY[0x274391F70](v48, -1, -1);
      }

      ++v40;
      v41 = v0[82];
      v42 = v0[80];
      v43 = v0[75];
      v44 = v0[73];
      v1 = v0[69];

      sub_26F44277C(v41, v42, type metadata accessor for TextModel);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
      sub_26F49FC38();
      (*v111)(v43, v44);
      sub_26F442914(v41, type metadata accessor for TextModel);
      v2 = v124;
      if (v121 == v40)
      {
        goto LABEL_41;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

LABEL_41:

  v49 = *(v2 + 16);

  if (v49)
  {
    v50 = 0;
    v51 = v0[77];
    v52 = v0[76];
    v107 = (v0[85] + 48);
    v1 = MEMORY[0x277D84F90];
    v109 = v51;
    v112 = v49;
    v118 = v52;
    while (1)
    {
      if (v50 >= *(v2 + 16))
      {
        goto LABEL_84;
      }

      v54 = v0[79];
      v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v56 = *(v51 + 72);
      sub_26F44277C(v2 + v55 + v56 * v50, v54, type metadata accessor for TextModel);
      v53 = v0[79];
      if (!*(v54 + *(v52 + 44)))
      {
        v57 = (v53 + *(v52 + 24));
        v59 = *v57;
        v58 = v57[1];
        v60 = v59 & 0xFFFFFFFFFFFFLL;
        if ((v58 & 0x2000000000000000) != 0 ? HIBYTE(v58) & 0xF : v60)
        {
          v122 = v1;
          v62 = v0[91];
          v63 = v52;
          v64 = v0[84];
          v65 = *(v63 + 28);
          v115 = v0[79];
          sub_26F3B8DD4(v53 + v65, v62, &qword_2806DEFD8, &qword_26F4A3670);
          v66 = *v107;
          LODWORD(v64) = (*v107)(v62, 1, v64);
          sub_26F3B6B4C(v62, &qword_2806DEFD8, &qword_26F4A3670);
          if (v64 == 1)
          {
            v53 = v0[79];
            v1 = v122;
            v2 = v124;
            v49 = v112;
            v52 = v118;
          }

          else
          {
            v67 = v0[90];
            v68 = v0[84];
            sub_26F3B8DD4(v115 + v65, v67, &qword_2806DEFD8, &qword_26F4A3670);
            LODWORD(v68) = v66(v67, 1, v68);
            sub_26F3B6B4C(v67, &qword_2806DEFD8, &qword_26F4A3670);
            v53 = v0[79];
            v69 = v68 == 1;
            v52 = v118;
            if (v69 || (v70 = (v53 + *(v118 + 32)), (v71 = v70[1]) == 0) || ((v72 = *v70 & 0xFFFFFFFFFFFFLL, (v71 & 0x2000000000000000) != 0) ? (v73 = HIBYTE(v71) & 0xF) : (v73 = v72), !v73))
            {
              sub_26F450C0C(v53, v0[78], type metadata accessor for TextModel);
              v1 = v122;
              v74 = swift_isUniquelyReferenced_nonNull_native();
              v126 = v122;
              v2 = v124;
              v51 = v109;
              if ((v74 & 1) == 0)
              {
                sub_26F403444(0, *(v122 + 16) + 1, 1);
                v1 = v126;
              }

              v76 = *(v1 + 16);
              v75 = *(v1 + 24);
              if (v76 >= v75 >> 1)
              {
                sub_26F403444((v75 > 1), v76 + 1, 1);
                v1 = v126;
              }

              v77 = v0[78];
              *(v1 + 16) = v76 + 1;
              sub_26F450C0C(v77, v1 + v55 + v76 * v56, type metadata accessor for TextModel);
              v49 = v112;
              v52 = v118;
              goto LABEL_46;
            }

            v1 = v122;
            v2 = v124;
            v49 = v112;
          }

          v51 = v109;
        }
      }

      sub_26F442914(v53, type metadata accessor for TextModel);
LABEL_46:
      if (v49 == ++v50)
      {
        goto LABEL_67;
      }
    }
  }

  v1 = MEMORY[0x277D84F90];
LABEL_67:
  v0[104] = v1;
  swift_bridgeObjectRelease_n();
  if (qword_280F66CB0 != -1)
  {
LABEL_85:
    swift_once();
  }

  v78 = sub_26F49DCA8();
  v0[105] = __swift_project_value_buffer(v78, qword_280F67ED0);
  swift_bridgeObjectRetain_n();
  v79 = sub_26F49DC88();
  v80 = sub_26F49FDB8();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v126 = v82;
    *v81 = 134218498;
    *(v81 + 4) = *(v1 + 16);
    *(v81 + 12) = 2082;
    v83 = v0[89];
    v84 = v0[85];
    v85 = v0[84];
    if (*(v1 + 16))
    {
      v86 = *(v0[77] + 80);
      sub_26F3B8DD4(v1 + *(v0[76] + 28) + ((v86 + 32) & ~v86), v0[89], &qword_2806DEFD8, &qword_26F4A3670);
      if ((*(v84 + 48))(v83, 1, v85) != 1)
      {
        v87 = v0[89];
        v88 = v0[85];
        v125 = v0[84];
        v0[38] = sub_26F49D988();
        v0[39] = v89;
        v0[40] = 45;
        v0[41] = 0xE100000000000000;
        v0[42] = 95;
        v0[43] = 0xE100000000000000;
        sub_26F3BDC0C();
        v90 = sub_26F49FFF8();
        v92 = v91;

        (*(v88 + 8))(v87, v125);
LABEL_75:

        v93 = sub_26F3B38D0(v90, v92, &v126);

        *(v81 + 14) = v93;
        *(v81 + 22) = 2082;
        if (*(v1 + 16))
        {
          v94 = v0[86];
          v95 = v0[85];
          v123 = v0[84];
          v96 = *(v0[77] + 80);
          (*(v95 + 16))(v94, v1 + *(v0[76] + 36) + ((v96 + 32) & ~v96));
          v0[32] = sub_26F49D988();
          v0[33] = v97;
          v0[34] = 45;
          v0[35] = 0xE100000000000000;
          v0[36] = 95;
          v0[37] = 0xE100000000000000;
          sub_26F3BDC0C();
          v98 = sub_26F49FFF8();
          v100 = v99;

          (*(v95 + 8))(v94, v123);
        }

        else
        {
          v100 = 0xE300000000000000;
          v98 = 7104878;
        }

        v101 = sub_26F3B38D0(v98, v100, &v126);

        *(v81 + 24) = v101;
        _os_log_impl(&dword_26F39E000, v79, v80, "Translate %ld models from '%{public}s' to '%{public}s'", v81, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x274391F70](v82, -1, -1);
        MEMORY[0x274391F70](v81, -1, -1);

        goto LABEL_79;
      }
    }

    else
    {
      (*(v84 + 56))(v0[89], 1, 1, v0[84]);
    }

    sub_26F3B6B4C(v0[89], &qword_2806DEFD8, &qword_26F4A3670);
    v92 = 0xE300000000000000;
    v90 = 7104878;
    goto LABEL_75;
  }

LABEL_79:
  v102 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 106;
  v0[3] = sub_26F44DDDC;
  v103 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0298, &unk_26F4A6C70);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26F48828C;
  v0[13] = &block_descriptor_11;
  v0[14] = v103;
  [v102 onDeviceModeEnabledWithDedicatedMachPort:1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F44DDDC()
{

  return MEMORY[0x2822009F8](sub_26F44DEBC, 0, 0);
}

uint64_t sub_26F44DEBC(uint64_t a1)
{
  v31 = v1;
  v2 = *(v1 + 848);
  v3 = sub_26F49DC88();
  v4 = sub_26F49FDB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30 = v6;
    *v5 = 136446210;
    if (v2)
    {
      v7 = 0x63697665642D6E6FLL;
    }

    else
    {
      v7 = 0x6B726F7774656ELL;
    }

    if (v2)
    {
      v8 = 0xE900000000000065;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    v9 = sub_26F3B38D0(v7, v8, &v30);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_26F39E000, v3, v4, "Translate path: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x274391F70](v6, -1, -1);
    MEMORY[0x274391F70](v5, -1, -1);
  }

  v10 = *(v1 + 832);
  v11 = *(v1 + 576);
  v12 = *(v1 + 568);
  v13 = *(v1 + 850);
  if (v2)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(v1 + 552);
  v16 = swift_allocBox();
  v18 = v17;
  *(v11 + *(v12 + 24)) = 0;
  sub_26F49DC18();
  *(v11 + *(v12 + 28)) = v14;
  sub_26F49DC08();
  sub_26F49DBD8();
  sub_26F450C0C(v11, v18, type metadata accessor for Signpost);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = swift_task_alloc();
  v21 = v2;
  v22 = v20;
  *(v20 + 16) = v15;
  *(v20 + 24) = v21;
  *(v20 + 25) = v13 & 1;
  *(v20 + 32) = v19;
  *(v20 + 40) = v16;

  v23 = sub_26F448E0C(sub_26F450C74, v22, v10);

  if (v23 >> 62)
  {
    if (sub_26F4A00A8())
    {
      v24 = sub_26F4A00A8();
      goto LABEL_14;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_14:
      v25 = *(v1 + 560);
      swift_beginAccess();
      *(v19 + 16) = v24;
      swift_beginAccess();
      sub_26F437E54();
      swift_endAccess();
      sub_26F3B0C24(0, &qword_2806E0AE8, 0x277CE1B40);
      v26 = sub_26F49FAD8();

      [v25 translate:v26 useDedicatedTextMachPort:1];

      goto LABEL_18;
    }
  }

  v27 = *(v1 + 576);

  swift_beginAccess();
  sub_26F44277C(v18, v27, type metadata accessor for Signpost);
  sub_26F437AD0();
  sub_26F442914(v27, type metadata accessor for Signpost);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  sub_26F49FC48();
LABEL_18:

  v28 = *(v1 + 8);

  return v28();
}

uint64_t static TextTranslationService.detectSourceLocale(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26F41027C;

  return sub_26F4501F4(a1);
}

uint64_t sub_26F44E478()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB8, &unk_26F4A8E10);
  *v3 = v0;
  v3[1] = sub_26F44E580;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000018, 0x800000026F4AE660, sub_26F450A64, v2, v4);
}

uint64_t sub_26F44E580()
{

  return MEMORY[0x2822009F8](sub_26F40EF50, 0, 0);
}

uint64_t sub_26F44E698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v81 = a5;
  v82 = a6;
  LODWORD(v77) = a4;
  v83 = a3;
  v90 = a7;
  v91 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  v80 = *(v89 - 8);
  v78 = *(v80 + 64);
  MEMORY[0x28223BE20](v89);
  v79 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A20, &qword_26F4A8A50);
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x28223BE20](v9);
  v85 = &v72 - v10;
  v11 = type metadata accessor for TextModel(0);
  v75 = *(v11 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x28223BE20](v11);
  v73 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v76 = &v72 - v14;
  MEMORY[0x28223BE20](v15);
  v74 = &v72 - v16;
  MEMORY[0x28223BE20](v17);
  v84 = &v72 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v72 - v20;
  v99 = v11;
  v22 = *(v11 + 28);
  v92 = a1;
  sub_26F3B8DD4(a1 + v22, v21, &qword_2806DEFD8, &qword_26F4A3670);
  v23 = sub_26F49DAB8();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v21, 1, v23) == 1)
  {
    sub_26F3B6B4C(v21, &qword_2806DEFD8, &qword_26F4A3670);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v97 = sub_26F49D988();
    v98 = v27;
    v95 = 45;
    v96 = 0xE100000000000000;
    v93 = 95;
    v94 = 0xE100000000000000;
    sub_26F3BDC0C();
    v25 = sub_26F49FFF8();
    v26 = v28;

    (*(v24 + 8))(v21, v23);
  }

  v29 = v92;
  v97 = sub_26F49D988();
  v98 = v30;
  v95 = 45;
  v96 = 0xE100000000000000;
  v93 = 95;
  v94 = 0xE100000000000000;
  sub_26F3BDC0C();
  v31 = sub_26F49FFF8();
  v33 = v32;

  v34 = v91;
  if (v26)
  {
    if (v25 == v31 && v26 == v33)
    {

LABEL_10:
      if (qword_280F66CB0 != -1)
      {
        swift_once();
      }

      v36 = sub_26F49DCA8();
      __swift_project_value_buffer(v36, qword_280F67ED0);
      v37 = sub_26F49DC88();
      v38 = sub_26F49FDC8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_26F39E000, v37, v38, "Passthrough text model, no translation needed", v39, 2u);
        MEMORY[0x274391F70](v39, -1, -1);
      }

      v40 = v84;
      sub_26F44277C(v29, v84, type metadata accessor for TextModel);
      v41 = (v29 + v99[6]);
      v43 = *v41;
      v42 = v41[1];
      v44 = (v40 + v99[8]);

      *v44 = v43;
      v44[1] = v42;
      sub_26F44277C(v40, v74, type metadata accessor for TextModel);
      v45 = v85;
      sub_26F49FC38();
      (*(v86 + 8))(v45, v87);
      *v90 = 0;
      return sub_26F442914(v40, type metadata accessor for TextModel);
    }

    v35 = sub_26F4A0458();

    if (v35)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  LOBYTE(v97) = v77 & 1;
  v47 = v79;
  v48 = v80;
  v49 = v89;
  (*(v80 + 16))(v79, v34, v89);
  v77 = type metadata accessor for TextModel;
  v50 = v29;
  v51 = v76;
  sub_26F44277C(v50, v76, type metadata accessor for TextModel);
  v52 = (*(v48 + 80) + 24) & ~*(v48 + 80);
  v53 = (v78 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (*(v75 + 80) + v53 + 8) & ~*(v75 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v81;
  (*(v48 + 32))(v55 + v52, v47, v49);
  *(v55 + v53) = v82;
  v56 = v92;
  sub_26F450C0C(v51, v55 + v54, v77);

  v57 = v88;
  v58 = sub_26F44FA40(v56, v83 & 1, &v97, sub_26F450C9C, v55);
  if (v57)
  {

    v59 = v73;
    sub_26F44277C(v56, v73, type metadata accessor for TextModel);
    v60 = v99[11];
    v61 = *(v59 + v60);
    v62 = v57;

    *(v59 + v60) = v57;
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v63 = sub_26F49DCA8();
    __swift_project_value_buffer(v63, qword_280F67ED0);
    v64 = v57;
    v65 = sub_26F49DC88();
    v66 = sub_26F49FDD8();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      v69 = sub_26F49D7E8();

      *(v67 + 4) = v69;
      *v68 = v69;
      _os_log_impl(&dword_26F39E000, v65, v66, "Caught error during translation: %@", v67, 0xCu);
      sub_26F3B6B4C(v68, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v68, -1, -1);
      MEMORY[0x274391F70](v67, -1, -1);
    }

    else
    {
    }

    sub_26F44277C(v59, v84, type metadata accessor for TextModel);
    v71 = v85;
    sub_26F49FC38();
    (*(v86 + 8))(v71, v87);
    *v90 = 0;
    return sub_26F442914(v59, type metadata accessor for TextModel);
  }

  else
  {
    v70 = v58;

    *v90 = v70;
  }

  return result;
}

uint64_t sub_26F44F02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v60 = a2;
  v61 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A20, &qword_26F4A8A50);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v57 = &v53 - v7;
  v8 = type metadata accessor for Signpost(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TextModel(0);
  MEMORY[0x28223BE20](v54);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v53 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AF0, &qword_26F4A8E78);
  MEMORY[0x28223BE20](v21);
  v23 = (&v53 - v22);
  v24 = swift_projectBox();
  sub_26F3B8DD4(a1, v23, &qword_2806E0AF0, &qword_26F4A8E78);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26F450C0C(v23, v20, type metadata accessor for TextModel);
    swift_beginAccess();
    sub_26F44277C(v24, v10, type metadata accessor for Signpost);
    sub_26F437948(0);
    sub_26F442914(v10, type metadata accessor for Signpost);
    v25 = v10;
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v36 = sub_26F49DCA8();
    __swift_project_value_buffer(v36, qword_280F67ED0);
    sub_26F44277C(v20, v17, type metadata accessor for TextModel);
    v37 = sub_26F49DC88();
    v38 = sub_26F49FDC8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v10;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v62[0] = v41;
      *v40 = 136446210;
      v42 = sub_26F444794();
      v44 = v43;
      sub_26F442914(v17, type metadata accessor for TextModel);
      v45 = sub_26F3B38D0(v42, v44, v62);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_26F39E000, v37, v38, "Text translation success: %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x274391F70](v41, -1, -1);
      v46 = v40;
      v25 = v39;
      MEMORY[0x274391F70](v46, -1, -1);
    }

    else
    {

      sub_26F442914(v17, type metadata accessor for TextModel);
    }

    v34 = v20;
    v12 = v56;
    v35 = v56;
    goto LABEL_12;
  }

  v17 = *v23;
  swift_beginAccess();
  sub_26F44277C(v24, v10, type metadata accessor for Signpost);
  sub_26F437948(1);
  sub_26F442914(v10, type metadata accessor for Signpost);
  v25 = v10;
  if (qword_280F66CB0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v26 = sub_26F49DCA8();
    __swift_project_value_buffer(v26, qword_280F67ED0);
    v27 = v17;
    v28 = sub_26F49DC88();
    v29 = sub_26F49FDD8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = sub_26F49D7E8();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_26F39E000, v28, v29, "Text translation failure: %@", v30, 0xCu);
      sub_26F3B6B4C(v31, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v31, -1, -1);
      MEMORY[0x274391F70](v30, -1, -1);
    }

    v20 = v56;
    sub_26F44277C(v55, v56, type metadata accessor for TextModel);
    v33 = *(v54 + 44);

    *&v20[v33] = v17;
    v34 = v20;
    v35 = v12;
LABEL_12:
    sub_26F44277C(v34, v35, type metadata accessor for TextModel);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
    v47 = v57;
    sub_26F49FC38();
    (*(v58 + 8))(v47, v59);
    sub_26F442914(v20, type metadata accessor for TextModel);
    v48 = v60;
    result = swift_beginAccess();
    v50 = *(v48 + 16);
    v51 = __OFSUB__(v50, 1);
    v52 = v50 - 1;
    if (!v51)
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  *(v48 + 16) = v52;
  if (!v52)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
    sub_26F49FC48();
    swift_beginAccess();
    sub_26F44277C(v24, v25, type metadata accessor for Signpost);
    sub_26F437AD0();
    return sub_26F442914(v25, type metadata accessor for Signpost);
  }

  return result;
}

uint64_t sub_26F44F73C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v18 - v12;
  if (*(a2 + 16))
  {
    v14 = type metadata accessor for TextModel(0);
    (*(v7 + 16))(v5, a2 + *(v14 + 36) + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)), v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v11);
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_26F3B6B4C(v5, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  static LocaleService.supportedTargetLocaleSync(_:)(v9, v13);
  v15 = *(v7 + 8);
  v16 = v15(v9, v6);
  MEMORY[0x28223BE20](v16);
  v18[-2] = v13;
  v18[0] = sub_26F442E50(sub_26F450A7C, &v18[-4], a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AC0, &unk_26F4A8E40);
  sub_26F49FB88();
  return v15(v13, v6);
}

NSObject *sub_26F44FA40(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v75 = a4;
  v76 = a5;
  v72 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v66 - v8;
  v10 = sub_26F49DAB8();
  v78 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v70 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for TextModel(0);
  v73 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - v15;
  v74 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  v71 = *a3;
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v21 = sub_26F49DCA8();
  v22 = __swift_project_value_buffer(v21, qword_280F67ED0);
  sub_26F44277C(a1, v20, type metadata accessor for TextModel);
  sub_26F44277C(a1, v16, type metadata accessor for TextModel);
  v69 = v22;
  v23 = sub_26F49DC88();
  v24 = sub_26F49FDB8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v66 = v9;
    v26 = v25;
    v27 = swift_slowAlloc();
    v67 = v10;
    v28 = v27;
    aBlock[0] = v27;
    *v26 = 134218242;
    v29 = sub_26F49F9B8();
    v68 = v13;
    sub_26F442914(v20, type metadata accessor for TextModel);
    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_26F49D968();
    sub_26F450E5C();
    v30 = sub_26F4A0428();
    v32 = v31;
    v13 = v68;
    sub_26F442914(v16, type metadata accessor for TextModel);
    v33 = sub_26F3B38D0(v30, v32, aBlock);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_26F39E000, v23, v24, "Requested translating text of length %ld with ID %{public}s", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v34 = v28;
    v10 = v67;
    MEMORY[0x274391F70](v34, -1, -1);
    v35 = v26;
    v9 = v66;
    MEMORY[0x274391F70](v35, -1, -1);
  }

  else
  {
    sub_26F442914(v20, type metadata accessor for TextModel);

    sub_26F442914(v16, type metadata accessor for TextModel);
  }

  v36 = TextModel.isTranslatable.getter();
  v37 = v78;
  if (v36)
  {
    sub_26F3B8DD4(a1 + *(v77 + 28), v9, &qword_2806DEFD8, &qword_26F4A3670);
    v38 = *(v37 + 48);
    if (v38(v9, 1, v10) == 1)
    {
      v39 = v70;
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v40 = v38(v9, 1, v10);
      v41 = v10;
      if (v40 != 1)
      {
        sub_26F3B6B4C(v9, &qword_2806DEFD8, &qword_26F4A3670);
      }
    }

    else
    {
      v39 = v70;
      (*(v37 + 32))(v70, v9, v10);
      v41 = v10;
    }

    v44 = objc_allocWithZone(MEMORY[0x277CE1AD0]);
    v45 = v39;
    v46 = sub_26F49D9F8();
    v47 = sub_26F49D9F8();
    v48 = [v44 initWithSourceLocale:v46 targetLocale:v47];

    (*(v78 + 8))(v45, v41);
    v49 = v48;
    [v49 setForcedOfflineTranslation_];
    [v49 setSourceOrigin_];
    v50 = sub_26F49DC88();
    v51 = sub_26F49FDB8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = a1;
      v54 = v52;
      *v52 = 134217984;
      if (v71)
      {
        v55 = 5;
      }

      else
      {
        v55 = 1;
      }

      *(v52 + 4) = v55;
      _os_log_impl(&dword_26F39E000, v50, v51, "Requested translating taskHint %ld", v52, 0xCu);
      v56 = v54;
      a1 = v53;
      MEMORY[0x274391F70](v56, -1, -1);
    }

    else
    {

      if (v71)
      {
        v55 = 5;
      }

      else
      {
        v55 = 1;
      }
    }

    [v49 setTaskHint_];

    v57 = v49;
    v58 = sub_26F49F898();
    [v57 setText_];

    sub_26F44277C(a1, v13, type metadata accessor for TextModel);
    v59 = (*(v73 + 80) + 24) & ~*(v73 + 80);
    v60 = (v74 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    *(v61 + 16) = v57;
    sub_26F450C0C(v13, v61 + v59, type metadata accessor for TextModel);
    v62 = (v61 + v60);
    v63 = v76;
    *v62 = v75;
    v62[1] = v63;
    aBlock[4] = sub_26F450D90;
    aBlock[5] = v61;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26F449538;
    aBlock[3] = &block_descriptor_24_0;
    v64 = _Block_copy(aBlock);
    v23 = v57;

    [v23 setCompletionHandler:v64];
    _Block_release(v64);
  }

  else
  {
    sub_26F442974();
    v42 = swift_allocError();
    *v43 = 9;
    aBlock[7] = v42;
    swift_willThrow();
  }

  return v23;
}

uint64_t sub_26F4501F4(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB0, &qword_26F4A8DF0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for TextModel(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AC8, &qword_26F4A8E50);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A08, &unk_26F4A89F0);
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AD0, &qword_26F4A8E58);
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F45043C, 0, 0);
}

uint64_t sub_26F45043C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];
  v14 = v0[16];
  v7 = v0[2];
  v8 = swift_task_alloc();
  *(v8 + 16) = 1;
  *(v8 + 24) = v7;
  (*(v4 + 104))(v5, *MEMORY[0x277D85778], v6);
  sub_26F49FC78();

  (*(v3 + 16))(v14, v1, v2);
  sub_26F3B18CC(&qword_2806E0AD8, &qword_2806E0AD0, &qword_26F4A8E58, MEMORY[0x277D857C0]);
  sub_26F49FCA8();
  v0[18] = MEMORY[0x277D84F90];
  v9 = sub_26F3B18CC(&qword_2806E0AE0, &qword_2806E0AC8, &qword_26F4A8E50, MEMORY[0x277D857B0]);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_26F45062C;
  v11 = v0[8];
  v12 = v0[3];

  return MEMORY[0x282200308](v12, v11, v9);
}

uint64_t sub_26F45062C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[9];
    v3 = v2[10];
    v5 = v2[8];

    (*(v4 + 8))(v3, v5);

    v6 = CGPointMake;
  }

  else
  {
    v6 = sub_26F450780;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F450780()
{
  v1 = v0[3];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    v2 = v0[17];
    v3 = v0[14];
    v4 = v0[15];
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v4 + 8))(v2, v3);
    sub_26F3B6B4C(v1, &qword_2806E0AB0, &qword_26F4A8DF0);

    v5 = v0[1];
    v6 = v0[18];

    return v5(v6);
  }

  else
  {
    v9 = v0[6];
    v8 = v0[7];
    sub_26F450C0C(v1, v8, type metadata accessor for TextModel);
    sub_26F44277C(v8, v9, type metadata accessor for TextModel);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v0[18];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_26F4464E4(0, v11[2] + 1, 1, v0[18]);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_26F4464E4((v12 > 1), v13 + 1, 1, v11);
    }

    v14 = v0[6];
    v15 = v0[5];
    sub_26F442914(v0[7], type metadata accessor for TextModel);
    v11[2] = v13 + 1;
    sub_26F450C0C(v14, v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13, type metadata accessor for TextModel);
    v0[18] = v11;
    v16 = sub_26F3B18CC(&qword_2806E0AE0, &qword_2806E0AC8, &qword_26F4A8E50, MEMORY[0x277D857B0]);
    v17 = swift_task_alloc();
    v0[19] = v17;
    *v17 = v0;
    v17[1] = sub_26F45062C;
    v18 = v0[8];
    v19 = v0[3];

    return MEMORY[0x282200308](v19, v18, v16);
  }
}

uint64_t sub_26F450A9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30) - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + v7);
  v13 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_26F3CEEAC;

  return sub_26F44A310(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_26F450C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F450C9C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for TextModel(0) - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + 16);
  v9 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_26F44F02C(a1, v8, v1 + v4, v7, v9);
}

void sub_26F450D90(void *a1, void *a2)
{
  v5 = *(type metadata accessor for TextModel(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_26F448F8C(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t block_copy_helper_22_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26F450E5C()
{
  result = qword_2806DEE50;
  if (!qword_2806DEE50)
  {
    sub_26F49D968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEE50);
  }

  return result;
}

double sub_26F450ECC()
{
  xmmword_2806E0B00 = xmmword_26F4A8E80;
  *algn_2806E0B10 = xmmword_26F4A8E90;
  xmmword_2806E0B20 = xmmword_26F4A8EA0;
  unk_2806E0B30 = xmmword_26F4A8EB0;
  result = 0.0;
  xmmword_2806E0B40 = xmmword_26F4A8EC0;
  return result;
}

uint64_t sub_26F450F0C@<X0>(uint64_t a1@<X8>)
{
  if (qword_2806DE7B0 != -1)
  {
    swift_once();
  }

  sub_26F49EF88();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0BC0, &qword_26F4A9228);
  v3 = a1 + *(result + 36);
  *v3 = 0x4044000000000000;
  *(v3 + 8) = 1;
  return result;
}

uint64_t sub_26F450FCC@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0B58, &qword_26F4A8FD8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = sub_26F49E678();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v19 = v12;

    sub_26F49FDE8();
    v16 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(a1, 0);
    (*(v11 + 8))(v15, v19);
    LOBYTE(a1) = v20;
  }

  v17 = 1;
  if ((a1 & 1) == 0 && (a2 & 0x100) == 0)
  {
    type metadata accessor for TranslationBackdropVibrantBlurLayer();
    sub_26F49E0B8();
    (*(v7 + 32))(a3, v9, v6);
    v17 = 0;
  }

  return (*(v7 + 56))(a3, v17, 1, v6, v13);
}

void sub_26F451274(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13TranslationUIP33_CF4489C12E47B589A5779A16E606AB3135TranslationBackdropVibrantBlurLayer_backdropLayer;
  v5 = *&v1[OBJC_IVAR____TtC13TranslationUIP33_CF4489C12E47B589A5779A16E606AB3135TranslationBackdropVibrantBlurLayer_backdropLayer];
  v6 = sub_26F49F898();
  [v5 setName_];

  [*&v2[v4] setScale_];
  v7 = *&v2[v4];
  v8 = sub_26F49F898();
  [v7 setGroupName_];

  if (a1 > 0.0)
  {
    [*&v2[v4] setCornerRadius_];
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  if (qword_2806DE7B0 != -1)
  {
    swift_once();
  }

  v25[0] = xmmword_2806E0B00;
  v25[1] = *algn_2806E0B10;
  v25[2] = xmmword_2806E0B20;
  v25[3] = unk_2806E0B30;
  v25[4] = xmmword_2806E0B40;
  v10 = [objc_opt_self() valueWithCAColorMatrix_];
  [v9 setValue:v10 forKey:*MEMORY[0x277CDA440]];

  v11 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  sub_26F3B0C24(0, &qword_2806DEF68, 0x277CCABB0);
  v12 = sub_26F49FF18();
  [v11 setValue:v12 forKey:*MEMORY[0x277CDA4F0]];

  v13 = sub_26F49FB58();
  [v11 setValue:v13 forKey:*MEMORY[0x277CDA4C8]];

  v14 = *&v2[v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0140, &qword_26F4A6670);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26F4A3B80;
  v16 = sub_26F3B0C24(0, &qword_2806E0B60, 0x277CD9EA0);
  *(v15 + 32) = v9;
  *(v15 + 88) = v16;
  *(v15 + 56) = v16;
  *(v15 + 64) = v11;
  v17 = v14;
  v18 = v9;
  v19 = v11;
  v20 = sub_26F49FAD8();

  [v17 setFilters_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26F4A7E40;
  v22 = *&v2[v4];
  *(v21 + 32) = v22;
  sub_26F3B0C24(0, &qword_2806E0B68, 0x277CD9ED0);
  v23 = v22;
  v24 = sub_26F49FAD8();

  [v2 setSublayers_];
}

uint64_t sub_26F451640@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_26F450FCC(*v1, v2 | *(v1 + 8), a1);
}

uint64_t sub_26F451668(uint64_t a1, int a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0B58, &qword_26F4A8FD8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0BC8, &qword_26F4A9230);
  MEMORY[0x28223BE20](v23);
  v11 = (&v21 - v10);
  v12 = sub_26F49E678();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
LABEL_3:
      type metadata accessor for TranslationBackdropVibrantBlurLayer();
      v17 = swift_allocObject();
      *(v17 + 16) = a1;
      v18 = v22 & 1;
      *(v17 + 24) = v22 & 1;
      *(v17 + 32) = a3;
      sub_26F4525C4(a1, v18);
      sub_26F49E0B8();
      (*(v7 + 16))(v11, v9, v6);
      swift_storeEnumTagMultiPayload();
      sub_26F3B18CC(&qword_2806E0B80, &qword_2806E0B58, &qword_26F4A8FD8, MEMORY[0x277CDF660]);
      sub_26F49E928();
      return (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    v21 = v14;

    sub_26F49FDE8();
    v20 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(a1, 0);
    (*(v13 + 8))(v16, v21);
    if (v24 != 1)
    {
      goto LABEL_3;
    }
  }

  *v11 = sub_26F49F258();
  swift_storeEnumTagMultiPayload();
  sub_26F3B18CC(&qword_2806E0B80, &qword_2806E0B58, &qword_26F4A8FD8, MEMORY[0x277CDF660]);
  return sub_26F49E928();
}

id sub_26F451D1C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_26F451DA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26F451DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranslationOverlayBackground(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TranslationOverlayBackground(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26F451F04()
{
  result = qword_2806E0B70;
  if (!qword_2806E0B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0B78, qword_26F4A9020);
    sub_26F3B18CC(&qword_2806E0B80, &qword_2806E0B58, &qword_26F4A8FD8, MEMORY[0x277CDF660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0B70);
  }

  return result;
}

uint64_t sub_26F451FD0(char a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0B88, &qword_26F4A9078);
  MEMORY[0x28223BE20](v4);
  v6 = (&v14 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0B90, &qword_26F4A9080);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14 - v8);
  if (a1)
  {
    v10 = *(sub_26F49E3A8() + 20);
    v11 = *MEMORY[0x277CE0118];
    v12 = sub_26F49E7C8();
    (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
    *v9 = a2;
    v9[1] = a2;
    *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF0A8, &qword_26F4A7B20) + 36)) = 256;
    sub_26F452354(v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_26F4521F4();
    sub_26F452300();
    sub_26F49E928();
    return sub_26F4523C4(v9);
  }

  else
  {
    *v6 = swift_getKeyPath();
    *(v6 + 8) = 0;
    v6[2] = a2;
    swift_storeEnumTagMultiPayload();
    sub_26F4521F4();
    sub_26F452300();
    return sub_26F49E928();
  }
}

unint64_t sub_26F4521F4()
{
  result = qword_2806E0B98;
  if (!qword_2806E0B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0B90, &qword_26F4A9080);
    sub_26F4522AC();
    sub_26F3B18CC(&qword_2806DF0E0, &qword_2806DF0A8, &qword_26F4A7B20, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0B98);
  }

  return result;
}

unint64_t sub_26F4522AC()
{
  result = qword_2806E0BA0;
  if (!qword_2806E0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0BA0);
  }

  return result;
}

unint64_t sub_26F452300()
{
  result = qword_2806E0BA8;
  if (!qword_2806E0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0BA8);
  }

  return result;
}

uint64_t sub_26F452354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0B90, &qword_26F4A9080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F4523C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0B90, &qword_26F4A9080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F45242C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26F452474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_26F4524D8()
{
  result = qword_2806E0BB0;
  if (!qword_2806E0BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0BB8, &qword_26F4A9180);
    sub_26F4521F4();
    sub_26F452300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0BB0);
  }

  return result;
}

uint64_t sub_26F4525C4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_26F4525D0()
{
  result = qword_2806E0BD0;
  if (!qword_2806E0BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0BD8, &qword_26F4A9238);
    sub_26F452688();
    sub_26F3B18CC(&qword_2806E0BE8, &qword_2806E0BF0, &qword_26F4A9240, MEMORY[0x277CDFB08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0BD0);
  }

  return result;
}

unint64_t sub_26F452688()
{
  result = qword_2806E0BE0;
  if (!qword_2806E0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0BE0);
  }

  return result;
}

unint64_t sub_26F4526DC()
{
  result = qword_2806E0BF8;
  if (!qword_2806E0BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0C00, &qword_26F4A9248);
    sub_26F3B18CC(&qword_2806E0B80, &qword_2806E0B58, &qword_26F4A8FD8, MEMORY[0x277CDF660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0BF8);
  }

  return result;
}

void sub_26F4527DC(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_26F49EE58();
    if (v2 <= 0x3F)
    {
      sub_26F452AA8(319, &qword_2806DF870, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26F452A24(319, &qword_2806E0C80, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_26F4529C0(319);
          if (v5 <= 0x3F)
          {
            sub_26F452A24(319, &qword_2806E0C98, type metadata accessor for TranslationOverlay.LockedMetrics, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_26F452AA8(319, &qword_2806DEAC8, MEMORY[0x277D839F8], MEMORY[0x277CDD630]);
              if (v7 <= 0x3F)
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

void sub_26F4529C0(uint64_t a1)
{
  if (!qword_2806E0C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0C90, &qword_26F4AB5F0);
    v1 = sub_26F49DFE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2806E0C88);
    }
  }
}

void sub_26F452A24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26F452AA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26F452B20(uint64_t a1)
{
  result = sub_26F49D918();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26F452BC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26F452C1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26F452CB4(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_26F49E688();
  return v3;
}

double sub_26F452CFC()
{
  xmmword_2806E0C08 = xmmword_26F4A9250;
  unk_2806E0C18 = xmmword_26F4A9260;
  xmmword_2806E0C28 = xmmword_26F4A9270;
  dword_2806E0C38 = 1068792545;
  unk_2806E0C44 = 0;
  *algn_2806E0C3C = 0;
  dword_2806E0C4C = 0;
  *&result = 1065353216;
  qword_2806E0C50 = 1065353216;
  return result;
}

uint64_t sub_26F452D4C(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0E68, &qword_26F4A96A8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0E70, &qword_26F4A96B0);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0E78, &qword_26F4A96B8);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  if (a2)
  {
    v13 = sub_26F49F238();
    KeyPath = swift_getKeyPath();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0E80, &qword_26F4A96C0);
    (*(*(v15 - 8) + 16))(v12, a1, v15);
    v16 = &v12[*(v10 + 36)];
    *v16 = KeyPath;
    v16[1] = v13;
    sub_26F3B8DD4(v12, v9, &qword_2806E0E78, &qword_26F4A96B8);
    swift_storeEnumTagMultiPayload();
    sub_26F4572E8();
    sub_26F4573CC();
    sub_26F49E928();
    return sub_26F3B6B4C(v12, &qword_2806E0E78, &qword_26F4A96B8);
  }

  else
  {
    v18 = sub_26F49F258();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0E80, &qword_26F4A96C0);
    (*(*(v19 - 8) + 16))(v6, a1, v19);
    *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0E88, &qword_26F4A96C8) + 36)] = v18;
    if (qword_2806DE7B8 != -1)
    {
      swift_once();
    }

    v20[2] = xmmword_2806E0C28;
    v20[3] = *&dword_2806E0C38;
    v20[4] = unk_2806E0C48;
    v20[0] = xmmword_2806E0C08;
    v20[1] = unk_2806E0C18;
    sub_26F49EF88();
    sub_26F3AA250(v6, v9);
    swift_storeEnumTagMultiPayload();
    sub_26F4572E8();
    sub_26F4573CC();
    sub_26F49E928();
    return sub_26F3B6B4C(v6, &qword_2806E0E68, &qword_26F4A96A8);
  }
}

uint64_t sub_26F4530B8()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for TranslationOverlay(0) + 48);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26F49FDE8();
    v7 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26F453210@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E678();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CC8, &qword_26F4A93E8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TranslationOverlay(0);
  sub_26F3B8DD4(v1 + *(v10 + 52), v9, &qword_2806E0CC8, &qword_26F4A93E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26F49E2C8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26F49FDE8();
    v13 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26F453418@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E678();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CD0, &qword_26F4A93F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TranslationOverlay(0);
  sub_26F3B8DD4(v1 + *(v10 + 56), v9, &qword_2806E0CD0, &qword_26F4A93F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F456C00(v9, a1);
  }

  sub_26F49FDE8();
  v12 = sub_26F49EC18();
  sub_26F49DBC8();

  sub_26F49E668();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26F4535F0()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for TranslationOverlay(0) + 60);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26F49FDE8();
    v7 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

double sub_26F453748()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1 <= 0.0)
  {
    v3 = (v2 & 1) == 0;
    v10 = 8;
    if (!v3)
    {
      v10 = 0;
    }

    return *(v0 + v10) / 5.0;
  }

  else
  {
    v3 = (v2 & 1) == 0;
    v4 = 8;
    if (v3)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v0 + v5);
    v7 = v1 / 5.0 + (v6 - v1) / 50.0;
    if (v3)
    {
      v4 = 0;
    }

    v8 = *(v0 + v4);
    if (v6 >= v8)
    {
      v11 = v1 * 0.5;
      result = v1 / 5.0 + (v8 - v1) / 50.0;
      if (v11 > result)
      {
        result = v11;
      }

      if (v7 < result)
      {
        return v7;
      }
    }

    else
    {
      return v1 / 5.0 + (v6 - v1) / 50.0;
    }
  }

  return result;
}

double sub_26F4537EC()
{
  v1 = 8;
  if (*(v0 + 32))
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 32))
  {
    v1 = 0;
  }

  v3 = *(v0 + 16);
  if (*(v0 + 32))
  {
    v4 = *v0;
  }

  else
  {
    v4 = *(v0 + 8);
  }

  if (v3 <= 0.0)
  {
    v5 = v4 / 5.0;
  }

  else
  {
    v5 = v3 / 5.0 + (v4 - v3) / 50.0;
    if (*(v0 + 32))
    {
      v6 = *(v0 + 8);
    }

    else
    {
      v6 = *v0;
    }

    if (v4 >= v6)
    {
      v7 = v3 * 0.5;
      v8 = v3 / 5.0 + (v6 - v3) / 50.0;
      if (v7 > v8)
      {
        v8 = v7;
      }

      if (v5 >= v8)
      {
        v5 = v8;
      }
    }
  }

  v9 = v5 + v5;
  v10 = v9 + v9;
  if (*(v0 + 32) & 1 | (*(v0 + v1) / *(v0 + v2) > 2.0))
  {
    v10 = v9;
  }

  return *v0 - v10;
}

uint64_t sub_26F4538B8()
{
  sub_26F4A0178();
  MEMORY[0x2743907E0](0x3A79616C7265764FLL, 0xEE003D657A697320);
  type metadata accessor for CGSize(0);
  sub_26F4A0228();
  MEMORY[0x2743907E0](0x6548656E696C202CLL, 0xED00003D74686769);
  v0 = sub_26F49FD18();
  MEMORY[0x2743907E0](v0);

  MEMORY[0x2743907E0](0x72656E726F63202CLL, 0xEF3D737569646152);
  sub_26F453748();
  v1 = sub_26F49FD18();
  MEMORY[0x2743907E0](v1);

  MEMORY[0x2743907E0](0xD000000000000010, 0x800000026F4AE750);
  sub_26F4537EC();
  sub_26F4A0228();
  return 0;
}

uint64_t sub_26F453A44(uint64_t a1, uint64_t a2, double a3, double a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  if (sub_26F49ECE8())
  {
    return v11 ^ v12 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F453AB4()
{
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  __swift_allocate_value_buffer(locked, qword_2806EA910);
  v1 = __swift_project_value_buffer(locked, qword_2806EA910);
  if (qword_2806DE7D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(locked, qword_2806EA928);
  return sub_26F4564FC(v2, v1, type metadata accessor for TranslationOverlay.LockedMetrics);
}

uint64_t sub_26F453B58@<X0>(uint64_t a1@<X8>)
{
  if (qword_2806DE7C0 != -1)
  {
    swift_once();
  }

  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  v3 = __swift_project_value_buffer(locked, qword_2806EA910);
  return sub_26F4564FC(v3, a1, type metadata accessor for TranslationOverlay.LockedMetrics);
}

double sub_26F453C18()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 96);
  if (*(v0 + 112))
  {
    v3 = *(v0 + 80);
  }

  else
  {
    v3 = *(v0 + 88);
  }

  if (v2 <= 0.0)
  {
    return v3 / 5.0;
  }

  result = v2 / 5.0 + (v3 - v2) / 50.0;
  if (*(v0 + 112))
  {
    v1 = *(v0 + 88);
  }

  if (v3 >= v1)
  {
    v5 = v2 * 0.5;
    v6 = v2 / 5.0 + (v1 - v2) / 50.0;
    if (v5 > v6)
    {
      v6 = v5;
    }

    if (result >= v6)
    {
      return v6;
    }
  }

  return result;
}

uint64_t sub_26F453C9C()
{
  v0 = sub_26F49D918();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  __swift_allocate_value_buffer(locked, qword_2806EA928);
  v5 = __swift_project_value_buffer(locked, qword_2806EA928);
  sub_26F49ED18();
  v7 = v6;
  sub_26F49ED18();
  v9 = v8;
  sub_26F49ED18();
  v11 = v10;
  sub_26F49D8B8();
  *v5 = 0;
  *(v5 + 8) = 0xE000000000000000;
  *(v5 + 16) = 0x4031000000000000;
  *(v5 + 24) = v7;
  *(v5 + 32) = 1;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  *(v5 + 64) = v9;
  *(v5 + 72) = 0;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 80) = 0;
  *(v5 + 104) = v11;
  *(v5 + 112) = 0;
  return (*(v1 + 32))(v5 + *(locked + 40), v3, v0);
}

void *sub_26F453E1C@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v129 = a1;
  v131 = sub_26F49EE58();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v133 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4B8, &qword_26F4A41C0);
  MEMORY[0x28223BE20](v9 - 8);
  v145 = &v125 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4C0, &qword_26F4A8460);
  MEMORY[0x28223BE20](v11 - 8);
  v143 = &v125 - v12;
  v148 = sub_26F49EE38();
  v137 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v144 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D28, &qword_26F4A9F30);
  MEMORY[0x28223BE20](v14 - 8);
  v142 = &v125 - v15;
  v141 = sub_26F49D918();
  v16 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v18 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v125 - v20;
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  MEMORY[0x28223BE20](locked);
  v23 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v125 - v25);
  MEMORY[0x28223BE20](v27);
  v29 = (&v125 - v28);
  v31 = v4[2];
  v30 = v4[3];
  v32 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v32 = v31 & 0xFFFFFFFFFFFFLL;
  }

  v134 = v4[3];
  v147 = v31;
  if (!v32)
  {
    v30 = v4[5];
    v147 = v4[4];
  }

  v149 = v30;

  v146 = type metadata accessor for TranslationOverlay(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C68, &unk_26F4A92A0);
  v150 = v4;
  sub_26F49F348();
  v33 = v29[1];
  v45 = *v29 == v31;
  v127 = v31;
  if (v45 && v33 == v134)
  {
    sub_26F4563CC(v29);
    v34 = v150;
  }

  else
  {
    v35 = sub_26F4A0458();
    sub_26F4563CC(v29);
    v34 = v150;
    if ((v35 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  sub_26F49F348();
  if (v26[5] == a2 && v26[6] == a3)
  {
    v36 = sub_26F49ECE8();
    sub_26F4563CC(v26);
    if (v36)
    {

      return sub_26F49F348();
    }
  }

  else
  {
    sub_26F4563CC(v26);
  }

  sub_26F49D908();
  sub_26F49F348();
  v38 = v141;
  (*(v16 + 16))(v18, &v23[*(locked + 40)], v141);
  sub_26F4563CC(v23);
  sub_26F49D8C8();
  v40 = v39;
  v41 = *(v16 + 8);
  v41(v18, v38);
  v41(v21, v38);
  sub_26F49DF08();
  if (v40 < *&v151)
  {

    sub_26F49F348();
    v42 = *(v23 + 5);
    v43 = *(v23 + 6);
    v44 = *(v23 + 7);
    sub_26F4563CC(v23);
    v45 = v43 == 0.0 || (v42 & 0x7FFFFFFFFFFFFFFFLL) == 0;
    v46 = a3 / v43;
    if (v45)
    {
      v46 = 0.0;
    }

    v47 = v44 * v46;
    v48 = *(v34 + 64);
    v49 = v129;
    result = sub_26F49F348();
    v49[10] = a2;
    v49[11] = a3;
    v49[12] = v47;
    v49[13] = a4;
    *(v49 + 112) = v48;
    return result;
  }

LABEL_22:
  v50 = *(v34 + 48);
  v51 = *(v34 + 64);
  if (v50)
  {
    if (*(v34 + 64))
    {
      v52 = a2;
    }

    else
    {
      v52 = a3;
    }

    v53 = v52 / v50;
  }

  else
  {
    v53 = 0.0;
  }

  *&v151 = a2;
  *(&v151 + 1) = a3;
  *&v152 = v53;
  *(&v152 + 1) = a4;
  v126 = a4;
  v153 = v51;
  v54 = sub_26F4537EC();
  v56 = v55;
  v141 = *(v146 + 44);
  sub_26F454DD8();
  v136 = v57;
  v140 = sub_26F49ECD8();
  v58 = *(v140 - 1);
  v139 = *(v58 + 56);
  v138 = v58 + 56;
  v135 = (v137 + 8);
  v59 = 256.0;
  v60 = 4.0;
  if (v51)
  {
    v128 = (v137 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v61 = floor(v60 + (v59 - v60) * 0.5);
      v62 = v142;
      v139(v142, 1, 1, v140);
      sub_26F49ED38();
      sub_26F3B6B4C(v62, &qword_2806E0D28, &qword_26F4A9F30);

      v63 = sub_26F49EEA8();
      v65 = v64;
      v67 = v66;

      v68 = sub_26F49EE08();
      v69 = *(*(v68 - 8) + 56);
      v146 = v68;
      v69(v143, 1, 1);
      v70 = sub_26F49EEB8();
      v71 = *(*(v70 - 8) + 56);
      v137 = v70;
      v71(v145, 1, 1);
      v72 = v144;
      sub_26F49EE28();
      sub_26F49EE18();
      v73 = v135;
      v75 = v74;
      sub_26F3B8D40(v63, v65, v67 & 1);

      v76 = *v73;
      (*v73)(v72, v148);

      v77 = v54 - v75;
      v78 = vabdd_f64(v59, v61);
      if (vabdd_f64(v61, v60) < 1.0 || v78 < 1.0)
      {
        break;
      }

      if (v77 < 0.0)
      {
        v59 = v61 + -1.0;
        if (v60 > v61 + -1.0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v77 <= 0.0)
        {
          goto LABEL_53;
        }

        v60 = v61 + 1.0;
        if (v61 + 1.0 > v59)
        {
          goto LABEL_53;
        }
      }
    }

    if (v77 < 0.0)
    {
      v61 = v61 + -1.0;
    }
  }

  else
  {
    v128 = (v137 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v61 = floor(v60 + (v59 - v60) * 0.5);
      v80 = v142;
      v139(v142, 1, 1, v140);
      sub_26F49ED38();
      sub_26F3B6B4C(v80, &qword_2806E0D28, &qword_26F4A9F30);

      v81 = sub_26F49EEA8();
      v83 = v82;
      v85 = v84;

      v86 = sub_26F49EE08();
      v87 = *(*(v86 - 8) + 56);
      v146 = v86;
      v87(v143, 1, 1);
      v88 = sub_26F49EEB8();
      v89 = *(*(v88 - 8) + 56);
      v137 = v88;
      v89(v145, 1, 1);
      v90 = v144;
      sub_26F49EE28();
      sub_26F49EE18();
      v91 = v135;
      v93 = v92;
      sub_26F3B8D40(v81, v83, v85 & 1);

      v76 = *v91;
      (*v91)(v90, v148);

      v94 = v56 - v93;
      v95 = vabdd_f64(v59, v61);
      if (vabdd_f64(v61, v60) < 1.0 || v95 < 1.0)
      {
        break;
      }

      if (v94 < 0.0)
      {
        v59 = v61 + -1.0;
        if (v60 > v61 + -1.0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v94 <= 0.0)
        {
          goto LABEL_53;
        }

        v60 = v61 + 1.0;
        if (v61 + 1.0 > v59)
        {
          goto LABEL_53;
        }
      }
    }

    if (v94 < 0.0)
    {
      v61 = v61 + -1.0;
    }
  }

LABEL_53:
  v97 = v126;
  v98 = v150;
  sub_26F454DD8();
  v99 = v142;
  v139(v142, 1, 1, v140);
  v150 = sub_26F49ED38();
  sub_26F3B6B4C(v99, &qword_2806E0D28, &qword_26F4A9F30);
  (*(v130 + 16))(v133, v98 + v141, v131);

  v100 = sub_26F49EEA8();
  v102 = v101;
  v104 = v103;

  sub_26F49EE08();
  v105 = *(v146 - 8);
  v142 = *(v105 + 56);
  v147 = v105 + 56;
  v106 = v143;
  (v142)(v143, 1, 1);
  sub_26F49EEB8();
  v107 = v137;
  v108 = *(v137 - 8);
  v140 = *(v108 + 56);
  v141 = v108 + 56;
  v109 = v145;
  v140(v145, 1, 1, v137);
  v110 = v144;
  sub_26F49EE28();
  sub_26F49EE18();
  v112 = v111;
  sub_26F3B8D40(v100, v102, v104 & 1);

  v76(v110, v148);
  v113 = sub_26F49EEA8();
  v115 = v114;
  LOBYTE(v100) = v116;
  (v142)(v106, 1, 1, v146);
  v140(v109, 1, 1, v107);
  sub_26F49EE28();
  v117 = v133;
  sub_26F49EE18();
  v119 = v118;
  sub_26F3B8D40(v113, v115, v100 & 1);

  v76(v110, v148);

  (*(v130 + 8))(v117, v131);
  v120 = v134;

  v121 = v129;
  sub_26F49D908();

  *v121 = v127;
  *(v121 + 1) = v120;
  v121[2] = v61;
  v121[3] = v97;
  *(v121 + 32) = v112 <= v119;
  v122 = v151;
  v123 = v152;
  *(v121 + 5) = v151;
  *(v121 + 7) = v123;
  v124 = v153;
  *(v121 + 72) = v153;
  *(v121 + 5) = v122;
  *(v121 + 6) = v123;
  *(v121 + 112) = v124;
  return result;
}

uint64_t sub_26F454DD8()
{
  v0 = sub_26F49E338();
  v35 = *(v0 - 8);
  v36 = v0;
  MEMORY[0x28223BE20](v0);
  v32 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0DC8, &qword_26F4A94E8);
  MEMORY[0x28223BE20](v34);
  v3 = &v31 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C90, &qword_26F4AB5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = sub_26F49E2C8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  sub_26F453210(&v31 - v17);
  (*(v13 + 104))(v15, *MEMORY[0x277CDF988], v12);
  sub_26F456BB8(&qword_2806E0DD0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v19 = sub_26F49F858();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  if ((v19 & 1) == 0)
  {
    return sub_26F49ECF8();
  }

  sub_26F453418(v11);
  v21 = v35;
  v22 = v36;
  (*(v35 + 104))(v8, *MEMORY[0x277CDFB70], v36);
  (*(v21 + 56))(v8, 0, 1, v22);
  v23 = *(v34 + 48);
  sub_26F3B8DD4(v11, v3, &qword_2806E0C90, &qword_26F4AB5F0);
  sub_26F3B8DD4(v8, &v3[v23], &qword_2806E0C90, &qword_26F4AB5F0);
  v24 = *(v21 + 48);
  if (v24(v3, 1, v22) == 1)
  {
    sub_26F3B6B4C(v8, &qword_2806E0C90, &qword_26F4AB5F0);
    sub_26F3B6B4C(v11, &qword_2806E0C90, &qword_26F4AB5F0);
    if (v24(&v3[v23], 1, v22) == 1)
    {
      sub_26F3B6B4C(v3, &qword_2806E0C90, &qword_26F4AB5F0);
      return sub_26F49ECF8();
    }

LABEL_7:
    sub_26F3B6B4C(v3, &qword_2806E0DC8, &qword_26F4A94E8);
    return sub_26F49ED18();
  }

  v25 = v33;
  sub_26F3B8DD4(v3, v33, &qword_2806E0C90, &qword_26F4AB5F0);
  if (v24(&v3[v23], 1, v22) == 1)
  {
    sub_26F3B6B4C(v8, &qword_2806E0C90, &qword_26F4AB5F0);
    sub_26F3B6B4C(v11, &qword_2806E0C90, &qword_26F4AB5F0);
    (*(v21 + 8))(v25, v22);
    goto LABEL_7;
  }

  v27 = v32;
  (*(v21 + 32))(v32, &v3[v23], v22);
  sub_26F456BB8(&qword_2806E0DD8, MEMORY[0x277CDFB80], MEMORY[0x277CDFB88]);
  v28 = v25;
  v29 = sub_26F49F868();
  v30 = *(v21 + 8);
  v30(v27, v22);
  sub_26F3B6B4C(v8, &qword_2806E0C90, &qword_26F4AB5F0);
  sub_26F3B6B4C(v11, &qword_2806E0C90, &qword_26F4AB5F0);
  v30(v28, v22);
  sub_26F3B6B4C(v3, &qword_2806E0C90, &qword_26F4AB5F0);
  if ((v29 & 1) == 0)
  {
    return sub_26F49ED18();
  }

  return sub_26F49ECF8();
}

uint64_t sub_26F455384@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TranslationOverlay(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  MEMORY[0x28223BE20](locked - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F455650(v1, a1);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CB0, &qword_26F4A93D0) + 36)) = 0;
  v9 = sub_26F4535F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C68, &unk_26F4A92A0);
  sub_26F49F348();
  v10 = sub_26F453C18();
  sub_26F4563CC(v8);
  v11 = sub_26F49F5A8();
  v13 = v12;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CB8, &qword_26F4A93D8) + 36);
  *v14 = v9 & 1;
  *(v14 + 8) = v10;
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  v15 = sub_26F4535F0();
  sub_26F49F348();
  v16 = sub_26F453C18();
  sub_26F4563CC(v8);
  v17 = sub_26F49F5A8();
  v19 = v18;
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CC0, &qword_26F4A93E0) + 36);
  *v20 = v15 & 1;
  *(v20 + 8) = v16;
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  if (qword_2806DE7C8 != -1)
  {
    swift_once();
  }

  sub_26F4564FC(v2, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranslationOverlay);
  v21 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v22 = swift_allocObject();
  sub_26F456428(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CD8, &qword_26F4A93F8);
  v24 = (a1 + *(result + 36));
  *v24 = sub_26F45648C;
  v24[1] = v22;
  return result;
}

uint64_t sub_26F455650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v108 = sub_26F49E398();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_26F49EE08();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CE0, &qword_26F4A9400);
  v91 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v89 = &v82 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CE8, &qword_26F4A9408);
  MEMORY[0x28223BE20](v88);
  v8 = &v82 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CF0, &qword_26F4A9410);
  MEMORY[0x28223BE20](v86);
  v96 = &v82 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CF8, &qword_26F4A9418);
  MEMORY[0x28223BE20](v87);
  v95 = &v82 - v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D00, &qword_26F4A9420);
  MEMORY[0x28223BE20](v93);
  v98 = &v82 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D08, &qword_26F4A9428);
  MEMORY[0x28223BE20](v97);
  v99 = &v82 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D10, &qword_26F4A9430);
  MEMORY[0x28223BE20](v102);
  v14 = &v82 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D18, &qword_26F4A9438);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v82 - v15;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D20, &unk_26F4A9440);
  MEMORY[0x28223BE20](v101);
  v100 = &v82 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D28, &qword_26F4A9F30);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v82 - v18;
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  MEMORY[0x28223BE20](locked - 8);
  v22 = (&v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *a1;
  v24 = *(a1 + 8);
  sub_26F454DD8();
  sub_26F453E1C(v22, v23, v24, v25);
  v26 = *(a1 + 56);
  sub_26F454DD8();
  v27 = sub_26F49ECD8();
  v28 = 1;
  (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
  v110 = sub_26F49ED38();
  sub_26F3B6B4C(v19, &qword_2806E0D28, &qword_26F4A9F30);
  v29 = v22[5];
  v85 = v22[6];
  sub_26F4537EC();
  if (v22[4])
  {
    goto LABEL_7;
  }

  if (*(a1 + 64))
  {
    v28 = 0;
LABEL_7:
    v31 = sub_26F49F5A8();
    goto LABEL_8;
  }

  if (!*(a1 + 65))
  {
    goto LABEL_7;
  }

  if (*(a1 + 65) == 1)
  {
    v84 = sub_26F49F5B8();
    v83 = v30;
    v28 = 0;
    goto LABEL_9;
  }

  v28 = 2;
  v31 = sub_26F49F5C8();
LABEL_8:
  v84 = v31;
  v83 = v32;
LABEL_9:
  v34 = *v22;
  v33 = *(v22 + 1);
  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = *v22 & 0xFFFFFFFFFFFFLL;
  }

  v82 = v35;
  if (!v35)
  {
    v34 = *(a1 + 32);
    v33 = *(a1 + 40);
  }

  v36 = sub_26F4530B8();
  v37 = *(a1 + 64);
  KeyPath = swift_getKeyPath();
  v118 = 0;
  *&v114 = v34;
  *(&v114 + 1) = v33;
  LOBYTE(v115) = 0;
  *(&v115 + 1) = MEMORY[0x277D84F90];
  LOBYTE(v116) = v36 & 1;
  BYTE1(v116) = v37;
  BYTE2(v116) = v37 ^ 1;
  *(&v116 + 1) = KeyPath;
  v117 = v110;

  if ((v37 ^ 1))
  {
    sub_26F49EDF8();
  }

  else
  {
    sub_26F49EDE8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D30, &qword_26F4A9480);
  sub_26F456564();
  v39 = v89;
  sub_26F49EF78();
  (*(v90 + 8))(v5, v92);
  v112[0] = v114;
  v112[1] = v115;
  v112[2] = v116;
  v113 = v117;
  sub_26F3B6B4C(v112, &qword_2806E0D30, &qword_26F4A9480);
  v40 = swift_getKeyPath();
  (*(v91 + 32))(v8, v39, v94);
  v41 = &v8[*(v88 + 36)];
  *v41 = v40;
  v41[8] = v28;
  v42 = v96;
  sub_26F3BBAEC(v8, v96, &qword_2806E0CE8, &qword_26F4A9408);
  *(v42 + *(v86 + 36)) = 1.0 / v26;
  if (qword_2806DE7C8 != -1)
  {
    swift_once();
  }

  v43 = v95;
  sub_26F4564FC(v22, &v95[*(v87 + 36)], type metadata accessor for TranslationOverlay.LockedMetrics);
  sub_26F3BBAEC(v42, v43, &qword_2806E0CF0, &qword_26F4A9410);
  v44 = sub_26F49EC88();
  sub_26F49DF78();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v43;
  v54 = v98;
  sub_26F3BBAEC(v53, v98, &qword_2806E0CF8, &qword_26F4A9418);
  v55 = v54 + *(v93 + 36);
  *v55 = v44;
  *(v55 + 8) = v46;
  *(v55 + 16) = v48;
  *(v55 + 24) = v50;
  *(v55 + 32) = v52;
  *(v55 + 40) = 0;
  v56 = sub_26F49EC38();
  sub_26F49DF78();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v54;
  v66 = v99;
  sub_26F3BBAEC(v65, v99, &qword_2806E0D00, &qword_26F4A9420);
  v67 = v66 + *(v97 + 36);
  *v67 = v56;
  *(v67 + 8) = v58;
  *(v67 + 16) = v60;
  *(v67 + 24) = v62;
  *(v67 + 32) = v64;
  *(v67 + 40) = 0;
  sub_26F49E0C8();
  sub_26F3BBAEC(v66, v14, &qword_2806E0D08, &qword_26F4A9428);
  v68 = &v14[*(v102 + 36)];
  v69 = v120;
  *v68 = v119;
  *(v68 + 1) = v69;
  *(v68 + 2) = v121;
  v70 = v106;
  if (v82)
  {
    v111 = MEMORY[0x277D84F90];
    sub_26F456BB8(&qword_2806E0D68, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D70, &unk_26F4A94D0);
    sub_26F3B18CC(&qword_2806E0D78, &qword_2806E0D70, &unk_26F4A94D0, MEMORY[0x277D83970]);
    v71 = v108;
    sub_26F4A0058();
  }

  else
  {
    sub_26F49E388();
    v71 = v108;
  }

  sub_26F456788();
  v72 = v103;
  sub_26F49F178();
  (*(v107 + 8))(v70, v71);
  sub_26F3B6B4C(v14, &qword_2806E0D10, &qword_26F4A9430);
  if (v85 == 0.0 || v29 == 0.0)
  {
    v74 = 0.0;
  }

  else
  {
    v74 = v22[10] / v29;
  }

  sub_26F49F668();
  v76 = v75;
  v78 = v77;

  v79 = v100;
  (*(v104 + 32))(v100, v72, v105);
  v80 = v79 + *(v101 + 36);
  *v80 = v74;
  *(v80 + 8) = v74;
  *(v80 + 16) = v76;
  *(v80 + 24) = v78;
  sub_26F3BBAEC(v79, v109, &qword_2806E0D20, &unk_26F4A9440);
  return sub_26F4563CC(v22);
}

uint64_t sub_26F4562C0(uint64_t a1)
{
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  MEMORY[0x28223BE20](locked - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_26F4564FC(a1, &v9 - v6, type metadata accessor for TranslationOverlay.LockedMetrics);
  type metadata accessor for TranslationOverlay(0);
  sub_26F4564FC(v7, v4, type metadata accessor for TranslationOverlay.LockedMetrics);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C68, &unk_26F4A92A0);
  sub_26F49F358();
  return sub_26F4563CC(v7);
}

uint64_t sub_26F4563CC(uint64_t a1)
{
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  (*(*(locked - 8) + 8))(a1, locked);
  return a1;
}

uint64_t sub_26F456428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationOverlay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F45648C(uint64_t a1)
{
  type metadata accessor for TranslationOverlay(0);

  return sub_26F4562C0(a1);
}

uint64_t sub_26F4564FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26F456564()
{
  result = qword_2806E0D38;
  if (!qword_2806E0D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D30, &qword_26F4A9480);
    sub_26F45661C();
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D38);
  }

  return result;
}

unint64_t sub_26F45661C()
{
  result = qword_2806E0D40;
  if (!qword_2806E0D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D48, &qword_26F4A9488);
    sub_26F4566A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D40);
  }

  return result;
}

unint64_t sub_26F4566A8()
{
  result = qword_2806E0D50;
  if (!qword_2806E0D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D58, &unk_26F4A9490);
    sub_26F456734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D50);
  }

  return result;
}