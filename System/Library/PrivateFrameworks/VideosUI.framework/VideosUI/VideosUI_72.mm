uint64_t sub_1E3BFBE88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3BFBEE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1E3BFBF3C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *v3;
  v5 = v3[26];

  v6 = *(type metadata accessor for UpnextCardMetada(0) + 28);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *a1 = v4;
  *(a1 + 8) = v5;
  v7 = *(*v4 + 488);

  v9 = v7(v8);

  if (v9 && (v11 = sub_1E373E010(67, v9, v10), , v11))
  {

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 16) = v12;
}

uint64_t sub_1E3BFC068(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3BFC0AC()
{
  result = qword_1ECF35090;
  if (!qword_1ECF35090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35080, &qword_1E42C2CD0);
    sub_1E328FCF4(&qword_1ECF35098, &qword_1ECF35078, &qword_1E42C2CC8);
    sub_1E328FCF4(&qword_1ECF350A0, &qword_1ECF35088, &qword_1E42C2CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35090);
  }

  return result;
}

void sub_1E3BFC1B8()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UpNextLockupCellLayout();
    if (v1 <= 0x3F)
    {
      sub_1E3AB40E8();
      if (v2 <= 0x3F)
      {
        sub_1E3BFC284(319, v2, v3);
        if (v4 <= 0x3F)
        {
          sub_1E38D5D68(319);
          if (v5 <= 0x3F)
          {
            OUTLINED_FUNCTION_72();
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3BFC284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1EE289DC0)
  {
    sub_1E3929B88(0, a2, a3);
    v3 = sub_1E4200CF4();
    if (!v4)
    {
      atomic_store(v3, &qword_1EE289DC0);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_61();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  v5 = OUTLINED_FUNCTION_60_4(*(v4 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
    v8 = OUTLINED_FUNCTION_60_4(*(v7 + 28));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

void sub_1E3BFC420()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UpNextLockupCellLayout();
    if (v1 <= 0x3F)
    {
      sub_1E38D5D68(319);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E3BFC4BC()
{
  result = qword_1ECF350B8;
  if (!qword_1ECF350B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF350C0, qword_1E42C2D68);
    sub_1E328FCF4(&qword_1ECF34FB0, &qword_1ECF34FA0, &qword_1E42C2B88);
    sub_1E328FCF4(&qword_1ECF34FB8, &qword_1ECF34F90, &qword_1E42C2B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF350B8);
  }

  return result;
}

double sub_1E3BFC5E8@<D0>(uint64_t a1@<X8>)
{
  sub_1E39C408C();
  v2 = sub_1E42036D4();
  sub_1E3BFC670(v2, v3, v4);
  sub_1E3D414C8(&type metadata for UpnextPlaybackStatus, a1);

  return result;
}

unint64_t sub_1E3BFC670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5A560;
  if (!qword_1ECF5A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5A560);
  }

  return result;
}

uint64_t sub_1E3BFC6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return sub_1E380E99C();
  }

  return result;
}

void sub_1E3BFC72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {

    sub_1E389BF58(a5, a6);
  }
}

unint64_t sub_1E3BFC7B8()
{
  result = qword_1ECF35170;
  if (!qword_1ECF35170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF350D8, &qword_1E42C2E70);
    sub_1E328FCF4(&qword_1ECF35178, &qword_1ECF350C8, &qword_1E42C2E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35170);
  }

  return result;
}

unint64_t sub_1E3BFC870()
{
  result = qword_1ECF35180;
  if (!qword_1ECF35180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35188, &qword_1E42C2F28);
    sub_1E328FCF4(&qword_1ECF35190, &qword_1ECF35198, &qword_1E42C2F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35180);
  }

  return result;
}

uint64_t sub_1E3BFC940(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E3BFC99C()
{
  result = qword_1EE282118[0];
  if (!qword_1EE282118[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29600, &unk_1E429B740);
    sub_1E3BFCA50(qword_1EE282150, type metadata accessor for PlaybackStatus);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE282118);
  }

  return result;
}

uint64_t sub_1E3BFCA50(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static VUITVExtension.variant.getter()
{
  v0 = objc_opt_self();
  if ([v0 isRunningInTVProductPageExtension])
  {
    return 0xD000000000000016;
  }

  if ([v0 isRunningInTVAppExtension])
  {
    return 0x7478457070417674;
  }

  return 0;
}

uint64_t TVExtensionConfig.variant.setter()
{
  OUTLINED_FUNCTION_156();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

double variable initialization expression of TVExtensionConfig.askToBuy@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1E4297170;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t sub_1E3BFCC0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF351B0, &qword_1E42C2F90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TVExtensionConfig.appConfig.getter()
{
  v0 = OUTLINED_FUNCTION_32_0();
  sub_1E37EA628(v0, v1);
  return OUTLINED_FUNCTION_32_0();
}

uint64_t TVExtensionConfig.appConfig.setter()
{
  OUTLINED_FUNCTION_156();
  result = sub_1E37E9E48(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t TVExtensionConfig.init(askToBuy:appConfig:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E3BFCFA0();
  v15 = static VUITVExtension.variant.getter();
  if (v16)
  {
    v17 = v15;
    v18 = a2;
    v20 = *a1;
    v19 = a1[1];
    v22 = a1[2];
    v21 = a1[3];
    v24 = a1[4];
    v23 = a1[5];
    v36 = v15;
    v37 = v16;
    v38 = v20;
    v39 = v19;
    v40 = v22;
    v41 = v21;
    v42 = v24;
    v43 = v23;
    v34 = v18;
    v44 = v18;
    v45 = a3;
    v25 = v16;
    sub_1E3A60EE0(&v36, v35);
    v26 = v25;
    v32 = v19;
    v33 = a3;
  }

  else
  {
    sub_1E37E9E48(a2, a3);
    sub_1E325F748(a1, &qword_1ECF351B0, &qword_1E42C2F90);
    v27 = Logger.tvExtension.unsafeMutableAddressor();
    (*(v10 + 16))(v14, v27, v8);
    v28 = sub_1E41FFC94();
    v29 = sub_1E42067F4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      MEMORY[0x1E69143B0](v30, -1, -1);
    }

    (*(v10 + 8))(v14, v8);
    v34 = 0;
    v23 = 0;
    v24 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v17 = 0;
    v32 = 0;
    v33 = 0;
    a3 = 1;
    v19 = 1;
    v25 = 1;
    v26 = 0;
  }

  v36 = v17;
  v37 = v26;
  v38 = v20;
  v39 = v19;
  v40 = v22;
  v41 = v21;
  v42 = v24;
  v43 = v23;
  v44 = v34;
  v45 = a3;
  result = sub_1E3A60F90(&v36);
  *a4 = v17;
  a4[1] = v25;
  a4[2] = v20;
  a4[3] = v32;
  a4[4] = v22;
  a4[5] = v21;
  a4[6] = v24;
  a4[7] = v23;
  a4[8] = v34;
  a4[9] = v33;
  return result;
}

unint64_t sub_1E3BFCFA0()
{
  result = qword_1ECF351B8;
  if (!qword_1ECF351B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF351B8);
  }

  return result;
}

uint64_t sub_1E3BFCFE4()
{
  OUTLINED_FUNCTION_155();
  v3 = v1 == 0x746E6169726176 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_54(0x746E6169726176, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x7975426F546B7361 && v0 == 0xE800000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_54(0x7975426F546B7361, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x69666E6F43707061 && v0 == 0xE900000000000067)
    {

      return 2;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_0_54(0x69666E6F43707061, 0xE900000000000067);

      if (v7)
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

uint64_t sub_1E3BFD0D4(char a1)
{
  if (!a1)
  {
    return 0x746E6169726176;
  }

  if (a1 == 1)
  {
    return 0x7975426F546B7361;
  }

  return 0x69666E6F43707061;
}

uint64_t sub_1E3BFD138@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3BFCFE4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3BFD160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3BFEA34(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1E3BFD198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3BFEA34(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t TVExtensionConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF351C0, &qword_1E42C2F98);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1E3BFEA34(v8, v9, v10);
  OUTLINED_FUNCTION_23_59(&unk_1F5D77BC8, v12, v11);
  OUTLINED_FUNCTION_13_103();
  v13 = sub_1E4207894();
  if (!v1)
  {
    sub_1E3BFEA88(v13, v14, v15);
    OUTLINED_FUNCTION_13_103();
    v16 = sub_1E42078A4();
    sub_1E3BFEADC(v16, v17, v18);
    OUTLINED_FUNCTION_13_103();
    sub_1E42078A4();
  }

  return (*(v6 + 8))(v2, v4);
}

void *TVExtensionConfig.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF351D8, &qword_1E42C2FA0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = a1[3];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1E3BFEA34(v11, v12, v13);
  sub_1E4207C04();
  if (v2)
  {
    OUTLINED_FUNCTION_11_100();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v41 = 0;
    v42 = 0;
    v43 = v10;
    v44 = 1;
    v45 = a2;
    v46 = v37;
    v47 = v6;
    v48 = v9;
    v49 = xmmword_1E4297170;
    return sub_1E3A60F90(&v41);
  }

  else
  {
    LOBYTE(v41) = 0;
    v35 = sub_1E4207804();
    v36 = v14;
    LOBYTE(__src[0]) = 1;
    sub_1E3BFEB30(v35, v14, v15);
    v16 = OUTLINED_FUNCTION_22_62(&type metadata for AskToBuyConfig, __src);
    v32 = a2;
    v17 = v41;
    v18 = v42;
    v19 = v43;
    v37 = v44;
    v33 = v45;
    v34 = v46;
    v50 = 2;
    sub_1E3BFEB84(v16, v20, v21);
    OUTLINED_FUNCTION_22_62(&type metadata for AppConfig, &v50);
    v22 = OUTLINED_FUNCTION_5_135();
    v23(v22);
    v31 = v39;
    v30 = v40;
    v24 = v35;
    __src[0] = v35;
    v25 = v36;
    __src[1] = v36;
    __src[2] = v17;
    __src[3] = v18;
    __src[4] = v19;
    v26 = v37;
    v27 = v33;
    __src[5] = v37;
    __src[6] = v33;
    __src[7] = v34;
    __src[8] = v39;
    __src[9] = v40;
    sub_1E3A60EE0(__src, &v41);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v41 = v24;
    v42 = v25;
    v43 = v17;
    v44 = v18;
    v45 = v19;
    v46 = v26;
    v47 = v27;
    v48 = v34;
    *&v49 = v31;
    *(&v49 + 1) = v30;
    sub_1E3A60F90(&v41);
    return memcpy(v32, __src, 0x50uLL);
  }
}

void *sub_1E3BFD688@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = TVExtensionConfig.init(from:)(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

uint64_t AskToBuyConfig.prompt.setter()
{
  OUTLINED_FUNCTION_156();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AskToBuyConfig.approveTitle.setter()
{
  OUTLINED_FUNCTION_156();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AskToBuyConfig.declineTitle.setter()
{
  OUTLINED_FUNCTION_156();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void __swiftcall AskToBuyConfig.init(prompt:approveTitle:declineTitle:)(VideosUI::AskToBuyConfig *__return_ptr retstr, Swift::String_optional prompt, Swift::String_optional approveTitle, Swift::String_optional declineTitle)
{
  retstr->prompt = prompt;
  retstr->approveTitle = approveTitle;
  retstr->declineTitle = declineTitle;
}

uint64_t sub_1E3BFD888()
{
  OUTLINED_FUNCTION_155();
  v3 = v1 == 0x74706D6F7270 && v2 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_54(0x74706D6F7270, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x5465766F72707061 && v0 == 0xEC000000656C7469;
    if (v5 || (OUTLINED_FUNCTION_0_54(0x5465766F72707061, 0xEC000000656C7469) & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x54656E696C636564 && v0 == 0xEC000000656C7469)
    {

      return 2;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_0_54(0x54656E696C636564, 0xEC000000656C7469);

      if (v7)
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

uint64_t sub_1E3BFD978(char a1)
{
  if (!a1)
  {
    return 0x74706D6F7270;
  }

  if (a1 == 1)
  {
    return 0x5465766F72707061;
  }

  return 0x54656E696C636564;
}

uint64_t sub_1E3BFD9E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3BFD888();
  *a1 = result;
  return result;
}

uint64_t sub_1E3BFDA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3BFEBD8(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1E3BFDA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3BFEBD8(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t AskToBuyConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF351F0, &qword_1E42C2FA8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1E3BFEBD8(v8, v9, v10);
  OUTLINED_FUNCTION_23_59(&unk_1F5D77B38, v12, v11);
  OUTLINED_FUNCTION_13_103();
  sub_1E4207894();
  if (!v1)
  {
    OUTLINED_FUNCTION_13_103();
    sub_1E4207894();
    OUTLINED_FUNCTION_13_103();
    sub_1E4207894();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t AskToBuyConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF351F8, &qword_1E42C2FB0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3BFEBD8(v11, v12, v13);
  sub_1E4207C04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v14 = OUTLINED_FUNCTION_17_83(&v28);
  v16 = v15;
  v27 = 1;
  v24 = OUTLINED_FUNCTION_17_83(&v27);
  v25 = v17;
  v26 = 2;
  v18 = OUTLINED_FUNCTION_17_83(&v26);
  v19 = v10;
  v21 = v20;
  (*(v7 + 8))(v19, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  a2[1] = v16;
  v23 = v25;
  a2[2] = v24;
  a2[3] = v23;
  a2[4] = v18;
  a2[5] = v21;
  return result;
}

double sub_1E3BFDDA0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  AskToBuyConfig.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t AppConfig.source.getter()
{
  OUTLINED_FUNCTION_155();

  return v0;
}

uint64_t AppConfig.source.setter()
{
  OUTLINED_FUNCTION_156();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t static AppConfig.createAppConfiguration(url:)(uint64_t a1)
{
  v64 = a1;
  v2 = sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v61 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35200, &qword_1E42C2FB8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_2_5();
  v60 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v55 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = sub_1E41FE004();
  OUTLINED_FUNCTION_0_10();
  v63 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v62 = v21 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_26_2();
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v30 = v29;
  sub_1E3BFEC2C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v30) == 1)
  {
    v31 = &unk_1ECF363C0;
    v32 = &unk_1E42A9420;
    v33 = v1;
LABEL_22:
    sub_1E325F748(v33, v31, v32);
    return 0;
  }

  (*(v24 + 32))(v28, v1, v30);
  sub_1E41FDFB4();
  v34 = v24;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    (*(v24 + 8))(v28, v30);
    v31 = &qword_1ECF304A8;
    v32 = &unk_1E42B18D0;
    v33 = v16;
    goto LABEL_22;
  }

  v64 = v28;
  (*(v63 + 32))(v62, v16, v17);
  result = sub_1E41FDF84();
  if (result)
  {
    v36 = result;
    v56 = v24;
    v57 = v30;
    v58 = v17;
    v37 = 0;
    v38 = *(result + 16);
    while (1)
    {
      if (v38 == v37)
      {

        v45 = v59;
        v48 = v59;
        v49 = 1;
        goto LABEL_19;
      }

      if (v37 >= *(v36 + 16))
      {
        break;
      }

      (*(v4 + 16))(v9, v36 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v37, v2);
      v39 = sub_1E41FDF54();
      v41 = v40;
      v42 = TVAppExtensionSource.ParamName.unsafeMutableAddressor();
      if (v39 == *v42 && v41 == *(v42 + 1))
      {

LABEL_18:

        v45 = v59;
        (*(v4 + 32))(v59, v9, v2);
        v48 = v45;
        v49 = 0;
LABEL_19:
        __swift_storeEnumTagSinglePayload(v48, v49, 1, v2);
        v46 = v60;
        v47 = v61;
        v30 = v57;
        v17 = v58;
        v34 = v56;
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_78_0();
      v44 = sub_1E42079A4();

      if (v44)
      {
        goto LABEL_18;
      }

      result = (*(v4 + 8))(v9, v2);
      ++v37;
    }

    __break(1u);
  }

  else
  {
    v45 = v59;
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v2);
    v46 = v60;
    v47 = v61;
LABEL_20:
    sub_1E3BFEC2C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v2);
    v51 = v64;
    if (EnumTagSinglePayload == 1)
    {
      sub_1E325F748(v45, &qword_1ECF35200, &qword_1E42C2FB8);
      (*(v63 + 8))(v62, v17);
      (*(v34 + 8))(v51, v30);
      v33 = v46;
      v31 = &qword_1ECF35200;
      v32 = &qword_1E42C2FB8;
      goto LABEL_22;
    }

    (*(v4 + 32))(v47, v46, v2);
    v52 = sub_1E41FDF64();
    v54 = v53;
    (*(v4 + 8))(v47, v2);
    sub_1E325F748(v45, &qword_1ECF35200, &qword_1E42C2FB8);
    (*(v63 + 8))(v62, v17);
    (*(v34 + 8))(v51, v30);
    if (v54)
    {
      return v52;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3BFE4A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E42079A4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E3BFE52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E3BFE4A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E3BFE558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3BFEC8C(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1E3BFE590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3BFEC8C(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t AppConfig.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35208, &qword_1E42C2FC0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3BFEC8C(v10, v11, v12);
  sub_1E4207C14();
  sub_1E4207894();
  return (*(v6 + 8))(v9, v4);
}

void *AppConfig.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35210, &unk_1E42C2FC8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3BFEC8C(v9, v10, v11);
  sub_1E4207C04();
  if (!v1)
  {
    v9 = sub_1E4207804();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_1E3BFE844@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = AppConfig.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_1E3BFE88C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v13[4] = *MEMORY[0x1E69E9840];
  sub_1E41FDE54();
  swift_allocObject();
  sub_1E41FDE44();
  sub_1E41FDE34();

  if (!v3)
  {
    v4 = objc_opt_self();
    OUTLINED_FUNCTION_78_0();
    v5 = sub_1E41FE454();
    v13[0] = 0;
    v6 = [v4 JSONObjectWithData:v5 options:4 error:v13];

    if (v6)
    {
      v7 = v13[0];
      sub_1E4207264();
      v8 = OUTLINED_FUNCTION_78_0();
      sub_1E38DCCB0(v8, v9);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      swift_dynamicCast();
    }

    else
    {
      v10 = v13[0];
      sub_1E41FE274();

      swift_willThrow();
      v11 = OUTLINED_FUNCTION_78_0();
      sub_1E38DCCB0(v11, v12);
    }
  }
}

unint64_t sub_1E3BFEA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5A5F0;
  if (!qword_1ECF5A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5A5F0);
  }

  return result;
}

unint64_t sub_1E3BFEA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF351C8;
  if (!qword_1ECF351C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF351C8);
  }

  return result;
}

unint64_t sub_1E3BFEADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF351D0;
  if (!qword_1ECF351D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF351D0);
  }

  return result;
}

unint64_t sub_1E3BFEB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF351E0;
  if (!qword_1ECF351E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF351E0);
  }

  return result;
}

unint64_t sub_1E3BFEB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF351E8;
  if (!qword_1ECF351E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF351E8);
  }

  return result;
}

unint64_t sub_1E3BFEBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5A5F8;
  if (!qword_1ECF5A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5A5F8);
  }

  return result;
}

uint64_t sub_1E3BFEC2C()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return v0;
}

unint64_t sub_1E3BFEC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5A600[0];
  if (!qword_1ECF5A600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5A600);
  }

  return result;
}

uint64_t sub_1E3BFECEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_9_100();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v3);
}

uint64_t sub_1E3BFED34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_2_109(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3BFEDA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_9_100();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v3);
}

uint64_t sub_1E3BFEDE8(uint64_t result, unsigned int a2, unsigned int a3)
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
      return OUTLINED_FUNCTION_2_109(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3BFEE4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_9_100();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v3);
}

uint64_t sub_1E3BFEE94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_2_109(result, a2);
    }
  }

  return result;
}

_BYTE *sub_1E3BFEEE8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1E3BFEFA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3BFF07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5AA10[0];
  if (!qword_1ECF5AA10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5AA10);
  }

  return result;
}

unint64_t sub_1E3BFF0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5AC20[0];
  if (!qword_1ECF5AC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5AC20);
  }

  return result;
}

unint64_t sub_1E3BFF12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5AE30[0];
  if (!qword_1ECF5AE30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5AE30);
  }

  return result;
}

unint64_t sub_1E3BFF184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5AF40;
  if (!qword_1ECF5AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5AF40);
  }

  return result;
}

unint64_t sub_1E3BFF1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5AF48[0];
  if (!qword_1ECF5AF48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5AF48);
  }

  return result;
}

unint64_t sub_1E3BFF234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5AFD0;
  if (!qword_1ECF5AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5AFD0);
  }

  return result;
}

unint64_t sub_1E3BFF28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5AFD8[0];
  if (!qword_1ECF5AFD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5AFD8);
  }

  return result;
}

unint64_t sub_1E3BFF2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5B060;
  if (!qword_1ECF5B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5B060);
  }

  return result;
}

unint64_t sub_1E3BFF33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5B068[0];
  if (!qword_1ECF5B068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5B068);
  }

  return result;
}

uint64_t sub_1E3BFF3A0()
{
  OUTLINED_FUNCTION_0_177();
  swift_allocObject();
  return sub_1E3BFF40C();
}

uint64_t sub_1E3BFF40C()
{
  OUTLINED_FUNCTION_0_177();
  *(v1 + 328) = v6;
  v7 = v6;
  v8 = sub_1E37ECC80(39, v5, v4, v3, 0, v2, v0);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1E3BFF4F4()
{
  v0 = sub_1E37ED784();

  return MEMORY[0x1EEE6BDC0](v0, 336, 7);
}

id sub_1E3BFF560(void *a1, uint64_t a2)
{
  sub_1E327F454(a1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  v4 = type metadata accessor for LibFamilySharingPlayableMediaEntity(0);
  OUTLINED_FUNCTION_0_178(v4, v5, v6, v4, v7, v8, v9, v10, v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1E327F454(a1, v53);
    v14 = type metadata accessor for LibMPBaseMediaEntity(0);
    OUTLINED_FUNCTION_0_178(v14, v15, v16, v17, v18, v19, v20, v21, v50);
    if (swift_dynamicCast())
    {
      v22 = v51;

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88, &unk_1E42C61F0);
      if (OUTLINED_FUNCTION_1_173(v23, v24, v25, v26, v27, v28, v29, v30, v51, v53[0]) || (, v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58, &unk_1E42A8830), OUTLINED_FUNCTION_1_173(v31, v32, v33, v34, v35, v36, v37, v38, v22, v53[0])))
      {
        __swift_destroy_boxed_opaque_existential_1(v53);
        sub_1E38F5EEC(a2, v53);
        if (v54)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32760, &unk_1E42E65A0);
          type metadata accessor for LibMPSeasonMediaEntity(0);
          if (swift_dynamicCast())
          {
            v39 = *(v52 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity_mediaCollection);

LABEL_17:
            v13 = [swift_getObjCClassFromMetadata() viewModelWithMPMediaItem:*(v22 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) seasonMediaItemCollection:v39];

LABEL_18:
            sub_1E38F5F5C(a2);
            __swift_destroy_boxed_opaque_existential_1(a1);

            return v13;
          }
        }

        else
        {
          sub_1E38F5F5C(v53);
        }

        v39 = 0;
        goto LABEL_17;
      }

      type metadata accessor for LibMPShowMediaEntity(0);
      v47 = swift_dynamicCastClass();
      if (v47)
      {
        v13 = [swift_getObjCClassFromMetadata() viewModelWithMPMediaItemCollection_];
        goto LABEL_18;
      }

      sub_1E3BFF8E8();
      v54 = v14;
      v55 = sub_1E3BFF92C();
      *v53 = v22;

      v11 = sub_1E3DE95C8(v53);
      __swift_destroy_boxed_opaque_existential_1(v53);
      if (v11)
      {
        v12 = [swift_getObjCClassFromMetadata() viewModelWithMPMediaItemCollection_];
        goto LABEL_3;
      }
    }

    else
    {
      sub_1E327F454(a1, v53);
      v40 = type metadata accessor for LibSidebandPlayableMediaEntity(0);
      OUTLINED_FUNCTION_0_178(v40, v41, v42, v40, v43, v44, v45, v46, v51);
      if (swift_dynamicCast())
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v13 = [swift_getObjCClassFromMetadata() viewModelWithVideoManagedObject_];
        }

        goto LABEL_4;
      }
    }

    sub_1E38F5F5C(a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return 0;
  }

  v11 = sub_1E402AAA4(v50);
  v12 = [swift_getObjCClassFromMetadata() viewModelWithVideosPlayable_];
LABEL_3:
  v13 = v12;

LABEL_4:
  sub_1E38F5F5C(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

unint64_t sub_1E3BFF8E8()
{
  result = qword_1EE23B108;
  if (!qword_1EE23B108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B108);
  }

  return result;
}

unint64_t sub_1E3BFF92C()
{
  result = qword_1EE26C6D8;
  if (!qword_1EE26C6D8)
  {
    type metadata accessor for LibMPBaseMediaEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE26C6D8);
  }

  return result;
}

uint64_t sub_1E3BFF984()
{
  type metadata accessor for BackgroundPlaybackModel(0);
  sub_1E3BFF9CC();
  OUTLINED_FUNCTION_32_0();

  return sub_1E42010C4();
}

unint64_t sub_1E3BFF9CC()
{
  result = qword_1ECF34CF0;
  if (!qword_1ECF34CF0)
  {
    type metadata accessor for BackgroundPlaybackModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34CF0);
  }

  return result;
}

uint64_t sub_1E3BFFA24@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6@<X3>)
{
  v9 = _s17EpicInlineContentVMa(0, a3, a4, a6);
  v10 = *(v9 + 44);
  *(a5 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  swift_storeEnumTagMultiPayload();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35218, qword_1E42C3578);
  sub_1E4148C68(sub_1E3BFFB6C, v11, &v16);
  v12 = (a5 + *(v9 + 40));
  *v12 = sub_1E3BFF984();
  v12[1] = v13;
  v14 = sub_1E379539C(a1, a5, &qword_1ECF33D80, &qword_1E42BD8B0);
  a2(v14);

  return sub_1E3BFFBA4(a1);
}

uint64_t sub_1E3BFFB6C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BackgroundPlaybackModel(0);
  sub_1E3F49F38();
  result = sub_1E3F45D7C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3BFFBA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80, &qword_1E42BD8B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3BFFC0C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v22 = sub_1E4200B44();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF291E0, &qword_1E42AE9A0);
  v8 = sub_1E42013A4();
  OUTLINED_FUNCTION_1_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  sub_1E3BFFE38(a1, v7);
  v17 = *(a1 + 24);
  sub_1E4202DB4();
  (*(v4 + 8))(v7, v22);
  v18 = sub_1E3C0008C();
  v24 = v17;
  v25 = v18;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v19 = *(v10 + 16);
  v19(v16, v13, v8);
  v20 = *(v10 + 8);
  v20(v13, v8);
  v19(v23, v16, v8);
  return (v20)(v16, v8);
}

uint64_t sub_1E3BFFE38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80, &qword_1E42BD8B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1E379EBAC(a2);
  v9 = *(**(v2 + *(a1 + 40) + 8) + 360);
  if ((v9)(v8))
  {
    v10 = sub_1E4200B44();
    OUTLINED_FUNCTION_1_2();
    v23 = v11;
    v12 = OUTLINED_FUNCTION_32_0();
    v13(v12);
    v14 = *MEMORY[0x1E697DBA8];
    v15 = *(v23 + 104);

    return v15(a2, v14, v10);
  }

  else
  {
    result = v9();
    if ((result & 1) == 0)
    {
      sub_1E379539C(v2, v7, &qword_1ECF33D80, &qword_1E42BD8B0);
      v17 = sub_1E4200B44();
      if (__swift_getEnumTagSinglePayload(v7, 1, v17) == 1)
      {
        return sub_1E3BFFBA4(v7);
      }

      else
      {
        OUTLINED_FUNCTION_1_2();
        v19 = v18;
        v20 = OUTLINED_FUNCTION_32_0();
        v21(v20);
        return (*(v19 + 32))(a2, v7, v17);
      }
    }
  }

  return result;
}

unint64_t sub_1E3C0008C()
{
  result = qword_1EE2887D0;
  if (!qword_1EE2887D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF291E0, &qword_1E42AE9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2887D0);
  }

  return result;
}

void sub_1E3C00138(uint64_t a1)
{
  sub_1E3C007E4(319, &qword_1EE289EE0, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1E3BF1504(319);
      if (v3 <= 0x3F)
      {
        sub_1E3C007E4(319, &qword_1EE289EC0, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E3C00228(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1E4200B44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(*(v6 - 8) + 64);
  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(*(v6 - 8) + 64);
  }

  if (v8)
  {
    v16 = *(*(v6 - 8) + 64);
  }

  else
  {
    v16 = v14 + 1;
  }

  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (!a2)
  {
    return 0;
  }

  v19 = v16 + v17;
  v20 = v18 + 7;
  if (a2 > v13)
  {
    v21 = *(v7 + 80) & 0xF8 | 7;
    v22 = v15 + ((v21 + ((v20 + (v19 & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v21) + 1;
    v23 = 8 * v22;
    if (v22 > 3)
    {
      goto LABEL_18;
    }

    v25 = ((a2 - v13 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v25))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }

    if (v25 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }

    if (v25 >= 2)
    {
LABEL_18:
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_35;
      }

LABEL_25:
      v26 = (v24 - 1) << v23;
      if (v22 > 3)
      {
        v26 = 0;
      }

      if (v22)
      {
        if (v22 <= 3)
        {
          v27 = v22;
        }

        else
        {
          v27 = 4;
        }

        switch(v27)
        {
          case 2:
            v28 = *a1;
            break;
          case 3:
            v28 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v28 = *a1;
            break;
          default:
            v28 = *a1;
            break;
        }
      }

      else
      {
        v28 = 0;
      }

      return v13 + (v28 | v26) + 1;
    }
  }

LABEL_35:
  if (v9 == v13)
  {
    if (v8 < 2)
    {
      return 0;
    }

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v8, v6);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v30 = (a1 + v19) & ~v17;
    if (v12 == v13)
    {

      return __swift_getEnumTagSinglePayload(v30, v12, v10);
    }

    else
    {
      v32 = *(((v20 + v30) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v32 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      return (v32 + 1);
    }
  }
}

void sub_1E3C004CC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1E4200B44();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(a4 + 16);
  v13 = *(v12 - 8);
  if (v11)
  {
    v14 = v11 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v13 + 84);
  if (v15 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = *(*(v8 - 8) + 64);
  if (v17 <= 8)
  {
    v18 = 8;
  }

  else
  {
    v18 = *(*(v8 - 8) + 64);
  }

  if (!v11)
  {
    ++v17;
  }

  v19 = *(v13 + 80);
  v20 = v17 + v19;
  v21 = (v17 + v19) & ~v19;
  v22 = *(v13 + 64) + 7;
  v23 = *(v10 + 80) & 0xF8 | 7;
  v24 = v18 + ((v23 + ((v22 + v21) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v23) + 1;
  v25 = 8 * v24;
  if (a3 > v16)
  {
    if (v24 <= 3)
    {
      v26 = ((a3 - v16 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v26))
      {
        v9 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v9 = v27;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

  if (v16 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v24] = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 2:
        *&a1[v24] = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 3:
LABEL_56:
        __break(1u);
        return;
      case 4:
        *&a1[v24] = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (!a2)
        {
          return;
        }

LABEL_37:
        if (v14 == v16)
        {
          v31 = (a2 + 1);
          v32 = a1;
          v12 = v8;
        }

        else
        {
          v32 = (&a1[v20] & ~v19);
          if (v15 != v16)
          {
            v33 = (&v32[v22] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v33 = a2 & 0x7FFFFFFF;
              v33[1] = 0;
            }

            else
            {
              v33[1] = (a2 - 1);
            }

            return;
          }

          v31 = a2;
          v11 = v15;
        }

        __swift_storeEnumTagSinglePayload(v32, v31, v11, v12);
        break;
    }
  }

  else
  {
    v28 = ~v16 + a2;
    if (v24 < 4)
    {
      v29 = (v28 >> v25) + 1;
      if (v24)
      {
        v30 = v28 & ~(-1 << v25);
        bzero(a1, v24);
        if (v24 == 3)
        {
          *a1 = v30;
          a1[2] = BYTE2(v30);
        }

        else if (v24 == 2)
        {
          *a1 = v30;
        }

        else
        {
          *a1 = v28;
        }
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v28;
      v29 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v24] = v29;
        break;
      case 2:
        *&a1[v24] = v29;
        break;
      case 3:
        goto LABEL_56;
      case 4:
        *&a1[v24] = v29;
        break;
      default:
        return;
    }
  }
}

void sub_1E3C007E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1E4200B44();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1E3C00844@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1E3C008E0(uint64_t a1)
{
  *(v1 + 104) = 0;
  v2 = sub_1E3C2F9A0();
  v3 = *(*v2 + 1696);

  v4 = v3();
  v15[0] = xmmword_1E42C3600;
  v15[1] = xmmword_1E42C3600;
  v16 = 0;
  (*(*v4 + 160))(v15);

  v6 = *(v3)(v5);
  (*(v6 + 1816))(0x402C000000000000, 0);

  v8 = (v3)(v7);
  if (qword_1EE28C218 != -1)
  {
    OUTLINED_FUNCTION_9_101(&qword_1EE28C218);
  }

  v9 = qword_1ECF71540;
  v10 = *(*v8 + 680);
  v11 = qword_1ECF71540;
  v10(v9);

  v13 = (v3)(v12);
  sub_1E3C37CBC(v13, 23);

  return v2;
}

uint64_t sub_1E3C00AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v26[0] = a7;
  v26[1] = a8;
  v26[2] = a10;
  v26[3] = a11;
  v18 = type metadata accessor for HorizontalPicker(0, v26);
  v19 = &a9[v18[16]];
  v20 = v18[13];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_59_20();
  sub_1E4203AE4();
  OUTLINED_FUNCTION_2();
  result = (*(v21 + 32))(&a9[v20], a1);
  *&a9[v18[14]] = a2;
  v23 = &a9[v18[15]];
  *v23 = a3;
  *(v23 + 1) = a4;
  *v19 = a5;
  *(v19 + 1) = a6;
  return result;
}

void sub_1E3C00BEC()
{
  OUTLINED_FUNCTION_31_1();
  v91 = v0;
  v95 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  v93 = v4;
  v94 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_37();
  OUTLINED_FUNCTION_17_3(v7);
  v98 = *(v8 + 16);
  OUTLINED_FUNCTION_42_45();
  v87 = sub_1E4206374();
  v9.i64[0] = v98;
  v90 = v9;
  v99 = *(v3 + 24);
  v89 = v3;
  OUTLINED_FUNCTION_37_42();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28998, &unk_1E4297E30);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  sub_1E42013A4();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5D8, qword_1E42A7040);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  v88 = *(v3 + 40);
  OUTLINED_FUNCTION_26_61(MEMORY[0x1E697FAF8]);
  v11 = v10;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_25();
  v117 = WitnessTable;
  v118 = sub_1E32752B0(v13, &qword_1ECF28998, &unk_1E4297E30, v14);
  v15 = swift_getWitnessTable();
  OUTLINED_FUNCTION_43_40(v15, MEMORY[0x1E697E5D8]);
  v16 = swift_getWitnessTable();
  OUTLINED_FUNCTION_56_24(v16, MEMORY[0x1E697EBF8]);
  v17 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_142();
  v115 = v17;
  v116 = sub_1E32752B0(v18, &qword_1ECF2C5D8, qword_1E42A7040, v19);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_60();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGRect(255);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v96 = type metadata accessor for SelectionHighlightPreferenceKey(255, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  OUTLINED_FUNCTION_2_141();
  v97 = swift_getWitnessTable();
  sub_1E42021F4();
  sub_1E42013A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_35();
  v113 = OpaqueTypeConformance2;
  v114 = swift_getWitnessTable();
  v86 = v11;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_63();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = OUTLINED_FUNCTION_46_33();
  swift_getOpaqueTypeMetadata2();
  sub_1E4202624();
  OUTLINED_FUNCTION_13_10();
  v25 = sub_1E42013A4();
  OUTLINED_FUNCTION_8_102();
  v110 = v25;
  v111 = swift_getWitnessTable();
  v112 = AssociatedConformanceWitness;
  sub_1E4203B54();
  v108 = OpaqueTypeMetadata2;
  v109 = v24;
  v26 = OUTLINED_FUNCTION_46_33();
  OUTLINED_FUNCTION_5_136();
  v106 = v26;
  v107 = sub_1E3C057F8(v27, v28, MEMORY[0x1E697CBD8]);
  v105 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_140();
  swift_getWitnessTable();
  v29 = sub_1E4200CA4();
  OUTLINED_FUNCTION_0_10();
  v31 = v30;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v74 - v33;
  OUTLINED_FUNCTION_19_78();
  v35 = swift_getWitnessTable();
  v78 = v35;
  v77 = sub_1E3C04158(v35, v36, v37);
  v108 = v29;
  v109 = &type metadata for HorizontalPickerStyle;
  v110 = v35;
  v111 = v77;
  AssociatedTypeWitness = MEMORY[0x1E697D050];
  v80 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1_2();
  v87 = v38;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  v75 = &v74 - v40;
  v41 = OUTLINED_FUNCTION_46_2();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v41, v42);
  v82 = v43;
  OUTLINED_FUNCTION_17_84();
  v79 = sub_1E32752B0(v44, &qword_1ECF35228, &qword_1E42C3640, v45);
  v108 = v96;
  v109 = v43;
  v110 = v97;
  v111 = v79;
  v83 = sub_1E4202604();
  OUTLINED_FUNCTION_58();
  v46 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v84 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4_6();
  v76 = v49 - v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_17_3(&v74 - v52);
  *&v53 = vdupq_laneq_s64(v99, 1).u64[0];
  v54 = v88;
  *(&v53 + 1) = v88;
  v101 = v53;
  v100 = vzip1q_s64(v90, v99);
  v55 = v91;
  v102 = v91;
  sub_1E4200C94();
  v56 = v78;
  v57 = v77;
  sub_1E42030C4();
  (*(v31 + 8))(v34, v29);
  v58 = v93;
  v59 = v92;
  v60 = v89;
  (*(v93 + 16))(v92, v55, v89);
  v61 = (*(v58 + 80) + 48) & ~*(v58 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = v98;
  *(v62 + 24) = v99;
  *(v62 + 40) = v54;
  (*(v58 + 32))(v62 + v61, v59, v60);
  v108 = v29;
  v109 = &type metadata for HorizontalPickerStyle;
  v110 = v56;
  v111 = v57;
  v63 = swift_getOpaqueTypeConformance2();
  sub_1E4203DA4();
  v64 = v76;
  v65 = v80;
  v66 = v75;
  sub_1E4203384();

  OUTLINED_FUNCTION_15_5();
  v67(v66, v65);
  OUTLINED_FUNCTION_20_67();
  v68 = swift_getWitnessTable();
  v103 = v63;
  v104 = v68;
  swift_getWitnessTable();
  v69 = v84;
  v70 = *(v84 + 16);
  v71 = v81;
  v70(v81, v64, v46);
  v72 = *(v69 + 8);
  v72(v64, v46);
  v70(v95, v71, v46);
  v73 = OUTLINED_FUNCTION_24_4();
  (v72)(v73);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C01580()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v75 = v2;
  v76 = v3;
  v84 = v4;
  v85 = v5;
  v6 = v4;
  v69 = v5;
  v86 = v7;
  v87 = v0;
  v8 = v7;
  v73 = v7;
  v68 = v0;
  v72 = type metadata accessor for HorizontalPicker(0, &v84);
  OUTLINED_FUNCTION_0_10();
  v71 = v9;
  v74 = *(v10 + 64);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v12);
  v79 = v6;
  v78 = sub_1E4206374();
  v13 = *(v8 + 8);
  OUTLINED_FUNCTION_42_45();
  v67 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_52_3();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28998, &unk_1E4297E30);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  sub_1E42013A4();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5D8, qword_1E42A7040);
  OUTLINED_FUNCTION_13_10();
  v14 = sub_1E42013A4();
  v95 = v1;
  v96 = MEMORY[0x1E697FAF8];
  OUTLINED_FUNCTION_14_55();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_25();
  v18 = sub_1E32752B0(v16, &qword_1ECF28998, &unk_1E4297E30, v17);
  v93 = WitnessTable;
  v94 = v18;
  v19 = swift_getWitnessTable();
  OUTLINED_FUNCTION_43_40(v19, MEMORY[0x1E697E5D8]);
  OUTLINED_FUNCTION_46_2();
  v20 = swift_getWitnessTable();
  OUTLINED_FUNCTION_56_24(v20, MEMORY[0x1E697EBF8]);
  v21 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_142();
  v24 = sub_1E32752B0(v22, &qword_1ECF2C5D8, qword_1E42A7040, v23);
  v91 = v21;
  v92 = v24;
  v66 = v1;
  v25 = swift_getWitnessTable();
  v84 = v14;
  v85 = v25;
  OUTLINED_FUNCTION_24_59();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGRect(255);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = OUTLINED_FUNCTION_42_45();
  type metadata accessor for SelectionHighlightPreferenceKey(v27, v28, AssociatedConformanceWitness, v29);
  OUTLINED_FUNCTION_2_141();
  swift_getWitnessTable();
  sub_1E42021F4();
  OUTLINED_FUNCTION_37_42();
  v30 = sub_1E42013A4();
  v84 = v14;
  v85 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_35();
  v32 = swift_getWitnessTable();
  v89 = OpaqueTypeConformance2;
  v90 = v32;
  v33 = swift_getWitnessTable();
  v84 = v30;
  v85 = v33;
  OUTLINED_FUNCTION_22_63();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = v30;
  v85 = v33;
  v63 = OUTLINED_FUNCTION_46_33();
  v84 = OpaqueTypeMetadata2;
  v85 = v63;
  OUTLINED_FUNCTION_21_65();
  v62 = v34;
  swift_getOpaqueTypeMetadata2();
  sub_1E4202624();
  OUTLINED_FUNCTION_13_10();
  v61 = sub_1E42013A4();
  OUTLINED_FUNCTION_8_102();
  v65 = swift_getWitnessTable();
  v84 = v78;
  v85 = AssociatedTypeWitness;
  v86 = v61;
  v87 = v65;
  v88 = AssociatedConformanceWitness;
  v35 = sub_1E4203B54();
  OUTLINED_FUNCTION_0_10();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_4_6();
  v41 = v39 - v40;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v60 - v44;
  v46 = v72;
  v83 = *(v75 + *(v72 + 56));
  v47 = v71;
  v48 = v70;
  (*(v71 + 16))(v70, v43);
  v49 = (*(v47 + 80) + 48) & ~*(v47 + 80);
  v50 = swift_allocObject();
  v51 = v69;
  *(v50 + 2) = v79;
  *(v50 + 3) = v51;
  v52 = v68;
  *(v50 + 4) = v73;
  *(v50 + 5) = v52;
  (*(v47 + 32))(&v50[v49], v48, v46);

  v84 = OpaqueTypeMetadata2;
  v85 = v63;
  v53 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_5_136();
  v56 = sub_1E3C057F8(v54, v55, MEMORY[0x1E697CBD8]);
  v81 = v53;
  v82 = v56;
  v57 = swift_getWitnessTable();
  sub_1E4203B44();
  v80 = v57;
  OUTLINED_FUNCTION_7_140();
  swift_getWitnessTable();
  v58 = *(v37 + 16);
  v58(v45, v41, v35);
  v59 = *(v37 + 8);
  v59(v41, v35);
  v58(v76, v45, v35);
  v59(v45, v35);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C01C20()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v43 = v0;
  v42 = v2;
  v44 = v3;
  v48 = v4;
  v46 = v5;
  v45 = v6;
  v47 = v7;
  sub_1E42013A4();
  v8 = OUTLINED_FUNCTION_24_4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v8, v9);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  OUTLINED_FUNCTION_41_41();
  sub_1E42013A4();
  OUTLINED_FUNCTION_52_3();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5D8, qword_1E42A7040);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  v61 = v1;
  v62 = MEMORY[0x1E697FAF8];
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_25();
  v59 = WitnessTable;
  v60 = sub_1E32752B0(v11, &qword_1ECF28998, &unk_1E4297E30, v12);
  v13 = swift_getWitnessTable();
  OUTLINED_FUNCTION_43_40(v13, MEMORY[0x1E697E5D8]);
  v14 = swift_getWitnessTable();
  OUTLINED_FUNCTION_56_24(v14, MEMORY[0x1E697EBF8]);
  v15 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_142();
  v57 = v15;
  v58 = sub_1E32752B0(v16, &qword_1ECF2C5D8, qword_1E42A7040, v17);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_59();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGRect(255);
  OUTLINED_FUNCTION_37_42();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v19 = OUTLINED_FUNCTION_13_10();
  type metadata accessor for SelectionHighlightPreferenceKey(v19, AssociatedTypeWitness, v20, v21);
  OUTLINED_FUNCTION_2_141();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_41_41();
  sub_1E42021F4();
  OUTLINED_FUNCTION_52_3();
  sub_1E42013A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_35();
  v55 = OpaqueTypeConformance2;
  v56 = swift_getWitnessTable();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E4202624();
  v25 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v42 - v33;
  v51 = v48;
  v52 = v44;
  v53 = v42;
  v54 = v43;
  type metadata accessor for HorizontalPicker(0, &v51);
  sub_1E3C020D4();
  v51 = OpaqueTypeMetadata2;
  v52 = v24;
  v35 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_5_136();
  v38 = sub_1E3C057F8(v36, v37, MEMORY[0x1E697CBD8]);
  v49 = v35;
  v50 = v38;
  swift_getWitnessTable();
  v39 = *(v27 + 16);
  v39(v34, v31, v25);
  v40 = *(v27 + 8);
  v40(v31, v25);
  v39(v47, v34, v25);
  v41 = OUTLINED_FUNCTION_123_0();
  (v40)(v41);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C020D4()
{
  OUTLINED_FUNCTION_31_1();
  v209 = v0;
  v2 = v1;
  v214 = v3;
  v200 = v4;
  v201 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v199 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v8 - v7);
  v197 = v2;
  v9 = *(v2 - 8);
  v2 -= 8;
  v195 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v193 = v11;
  OUTLINED_FUNCTION_39_37();
  OUTLINED_FUNCTION_17_3(v12);
  v210 = *(v2 + 24);
  OUTLINED_FUNCTION_1_2();
  v211 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v205 = v15;
  OUTLINED_FUNCTION_39_37();
  OUTLINED_FUNCTION_17_3(v16);
  v192 = *(v2 + 40);
  v212 = *(v192 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_10();
  v213 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v208 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17_3(&v154 - v23);
  OUTLINED_FUNCTION_1_2();
  v184 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v27 - v26);
  v191 = v28;
  v29 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v180 = v30;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28998, &unk_1E4297E30);
  v33 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v176 = v34;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v36);
  v37 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  *&v182 = v38;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v40);
  OUTLINED_FUNCTION_58();
  v41 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v177 = v42;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v44);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5D8, qword_1E42A7040);
  v45 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v178 = v46;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v48);
  *&v186 = *(v2 + 48);
  OUTLINED_FUNCTION_26_61(MEMORY[0x1E697FAF8]);
  v183 = v29;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_25();
  v52 = sub_1E32752B0(v50, &qword_1ECF28998, &unk_1E4297E30, v51);
  v159 = WitnessTable;
  v221 = WitnessTable;
  v222 = v52;
  v179 = v33;
  v161 = swift_getWitnessTable();
  OUTLINED_FUNCTION_43_40(v161, MEMORY[0x1E697E5D8]);
  v185 = v37;
  v163 = swift_getWitnessTable();
  OUTLINED_FUNCTION_56_24(v163, MEMORY[0x1E697EBF8]);
  v181 = v41;
  v53 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_142();
  v56 = sub_1E32752B0(v54, &qword_1ECF2C5D8, qword_1E42A7040, v55);
  v165 = v53;
  v219 = v53;
  v220 = v56;
  v57 = swift_getWitnessTable();
  v217 = v45;
  v218 = v57;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v171 = v59;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v61);
  type metadata accessor for CGRect(255);
  v63 = v62;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = type metadata accessor for SelectionHighlightPreferenceKey(255, AssociatedTypeWitness, AssociatedConformanceWitness, v65);
  OUTLINED_FUNCTION_2_141();
  v67 = swift_getWitnessTable();
  v169 = v63;
  v166 = v66;
  v164 = v67;
  sub_1E42021F4();
  v172 = OpaqueTypeMetadata2;
  v68 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v168 = v69;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v71);
  v217 = v45;
  v218 = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_35();
  v73 = swift_getWitnessTable();
  v158 = OpaqueTypeConformance2;
  v215 = OpaqueTypeConformance2;
  v216 = v73;
  v74 = swift_getWitnessTable();
  v217 = v68;
  v218 = v74;
  v75 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v167 = v76;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v78);
  v170 = v68;
  v217 = v68;
  v218 = v74;
  v162 = v74;
  v79 = swift_getOpaqueTypeConformance2();
  v190 = v75;
  v217 = v75;
  v218 = v79;
  v204 = v79;
  OUTLINED_FUNCTION_21_65();
  v189 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v188 = v80;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v82);
  v83 = v209;
  (*(v209 + *(v2 + 68)))(v214);
  v84 = v83 + *(v2 + 60);
  v85 = sub_1E4203AE4();
  v86 = v207;
  v155 = v85;
  v160 = v84;
  MEMORY[0x1E690E3F0]();
  v87 = v208;
  sub_1E42074C4();
  v157 = *(AssociatedConformanceWitness + 8);
  LOBYTE(v84) = sub_1E4205E84();
  v88 = v213 + 8;
  v89 = *(v213 + 8);
  v89(v87, AssociatedTypeWitness);
  v196 = AssociatedTypeWitness;
  v213 = v88;
  v156 = v89;
  v89(v86, AssociatedTypeWitness);
  if (v84)
  {
    if (_MergedGlobals_216 != -1)
    {
      OUTLINED_FUNCTION_10_94(&_MergedGlobals_216);
    }

    v90 = &qword_1ECF71538;
  }

  else
  {
    if (qword_1EE28C218 != -1)
    {
      OUTLINED_FUNCTION_9_101(&qword_1EE28C218);
    }

    v90 = &qword_1ECF71540;
  }

  sub_1E38F08C4(*v90);
  OUTLINED_FUNCTION_51_28();
  v91 = v191;
  v92 = v186;
  sub_1E4202EE4();

  OUTLINED_FUNCTION_15_5();
  v93 = OUTLINED_FUNCTION_46_2();
  v94(v93);
  sub_1E4203704();
  v95 = v173;
  v96 = v183;
  sub_1E4202FB4();

  OUTLINED_FUNCTION_15_5();
  v98 = v97(v87, v96);
  v98.n128_u64[0] = 5.0;
  v99.n128_u64[0] = 10.0;
  v100.n128_u64[0] = 5.0;
  v101.n128_u64[0] = 10.0;
  j_nullsub_1(v98, v99, v100, v101);
  v102 = v175;
  v103 = v179;
  sub_1E42034D4();
  OUTLINED_FUNCTION_15_5();
  v104(v95, v103);
  sub_1E4203DA4();
  v105 = v185;
  v106 = v174;
  sub_1E4203474();
  OUTLINED_FUNCTION_15_5();
  v108 = v107(v102, v105);
  sub_1E3C055D4(v108, v109, v110);
  OUTLINED_FUNCTION_51_28();
  v111 = v181;
  sub_1E4202E54();
  OUTLINED_FUNCTION_15_5();
  v112(v106, v111);
  OUTLINED_FUNCTION_123_0();
  v113 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_123_0();
  LOBYTE(v102) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_123_0();
  v114 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(0, v113 & 1, 1, v102 & 1, v114 & 1, v45, v57);
  OUTLINED_FUNCTION_15_5();
  v115(v87, v45);
  sub_1E4203944();
  v116 = v211;
  v117 = *(v211 + 16);
  v183 = v211 + 16;
  v184 = v117;
  v118 = v206;
  v119 = v210;
  v117(v206, v214, v210);
  v120 = *(v116 + 80);
  v185 = v120 | 7;
  v121 = swift_allocObject();
  *&v122 = v119;
  *(&v122 + 1) = v91;
  v182 = v122;
  v123 = v192;
  *&v124 = v192;
  *(&v124 + 1) = v92;
  v186 = v124;
  *(v121 + 16) = v122;
  *(v121 + 32) = v124;
  v125 = *(v116 + 32);
  v211 = v116 + 32;
  v191 = v125;
  v125(v121 + ((v120 + 48) & ~v120), v118, v119);
  v126 = v172;
  v127 = v203;
  sub_1E4203044();

  OUTLINED_FUNCTION_15_5();
  v128(v127, v126);
  v129 = v214;
  v130 = v119;
  (*(v123 + 16))(v119, v123);
  sub_1E3E03180();

  OUTLINED_FUNCTION_15_5();
  v131 = OUTLINED_FUNCTION_46_2();
  v132(v131);
  v133 = v195;
  v134 = v194;
  v135 = v197;
  (*(v195 + 16))(v194, v209, v197);
  v136 = v206;
  v184(v206, v129, v130);
  v137 = (*(v133 + 80) + 48) & ~*(v133 + 80);
  v138 = (v193 + v137 + v120) & ~v120;
  v139 = swift_allocObject();
  v140 = v186;
  *(v139 + 16) = v182;
  *(v139 + 32) = v140;
  (*(v133 + 32))(v139 + v137, v134, v135);
  v191(v139 + v138, v136, v130);
  v141 = v187;
  v142 = v190;
  v143 = v202;
  sub_1E4202E74();

  OUTLINED_FUNCTION_15_5();
  v144(v143, v142);
  OUTLINED_FUNCTION_51_28();
  MEMORY[0x1E690E3F0](v155);
  v145 = v208;
  sub_1E42074C4();
  v146 = v196;
  LOBYTE(v139) = sub_1E4205E84();
  v147 = v156;
  v156(v145, v146);
  v147(v120, v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35270, &unk_1E42C3980);
  v148 = v199;
  if (v139)
  {
    v149 = swift_allocObject();
    *(v149 + 16) = xmmword_1E4299720;
    sub_1E4201C54();
  }

  else
  {
    v149 = swift_allocObject();
    *(v149 + 16) = xmmword_1E4297BE0;
  }

  sub_1E4201C94();
  v217 = v149;
  sub_1E3C057F8(&qword_1EE289298, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35278, &qword_1E42C91A0);
  sub_1E32752B0(&qword_1EE23B5D8, &qword_1ECF35278, &qword_1E42C91A0, MEMORY[0x1E69E6328]);
  v150 = v198;
  v151 = v201;
  sub_1E42072E4();
  v217 = v142;
  v218 = v204;
  swift_getOpaqueTypeConformance2();
  v152 = v189;
  sub_1E4203294();
  (*(v148 + 8))(v150, v151);
  OUTLINED_FUNCTION_15_5();
  v153(v141, v152);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0331C()
{
  OUTLINED_FUNCTION_31_1();
  v26 = v0;
  v27 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v28[0] = v6;
  v28[1] = v4;
  v28[2] = v2;
  v28[3] = v0;
  v12 = type metadata accessor for HorizontalPicker(0, v28);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - v19;
  v21 = *v11;
  (*(v14 + 16))(&v26 - v19, v9, v12, v18);
  v22 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v7;
  *(v23 + 3) = v5;
  v24 = v26;
  *(v23 + 4) = v3;
  *(v23 + 5) = v24;
  (*(v14 + 32))(&v23[v22], v20, v12);
  *&v23[(v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v21;
  v25 = v27;
  *v27 = sub_1E3C05268;
  v25[1] = v23;

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C03480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v79 = a2;
  v74 = a1;
  v81 = a4;
  v78 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v77 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v76 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_3(&v70 - v10);
  v73 = sub_1E4201F74();
  OUTLINED_FUNCTION_0_10();
  v72 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = a3 + 3;
  v17 = a3 + 5;
  v18 = a3[4];
  v19 = a3[2];
  OUTLINED_FUNCTION_41_41();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v21 = OUTLINED_FUNCTION_13_10();
  v24 = type metadata accessor for SelectionHighlightPreferenceData(v21, AssociatedTypeWitness, v22, v23);
  OUTLINED_FUNCTION_57_4();
  v25 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v70 - v29;
  OUTLINED_FUNCTION_1_2();
  v71 = v31;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v70 - v33;
  *&v85 = v79;
  *&v35 = v19;
  *(&v35 + 1) = *v16;
  *&v36 = v18;
  *(&v36 + 1) = *v17;
  v82 = v35;
  v83 = v36;
  v84 = v80;
  OUTLINED_FUNCTION_57_4();
  sub_1E4206374();
  OUTLINED_FUNCTION_15_6();
  swift_getWitnessTable();
  sub_1E4206204();
  if (__swift_getEnumTagSinglePayload(v30, 1, v24) == 1)
  {
    (*(v27 + 8))(v30, v25);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v41 = v71;
    v42 = OUTLINED_FUNCTION_24_4();
    v43(v42);
    type metadata accessor for CGRect(0);
    sub_1E4200EB4();
    sub_1E4202254();
    v44 = v73;
    sub_1E4200E84();
    OUTLINED_FUNCTION_15_5();
    v45(v15, v44);
    v46 = v75;
    sub_1E374709C(v75);
    OUTLINED_FUNCTION_51_28();
    v48 = v76;
    v49 = v78;
    (*(v47 + 104))(v76);
    sub_1E4201314();
    v50 = *(v25 + 8);
    v50(v48, v49);
    v50(v46, v49);
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v40 = v51;
    v39 = v52;
    v38 = v53;
    v37 = v54;
    (*(v41 + 8))(v34, v24);
  }

  v55 = sub_1E4201D44();
  v56 = v81;
  *v81 = v55;
  v56[1] = 0;
  *(v56 + 16) = 1;
  v57 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35258, &qword_1E42C3958) + 44);
  v58 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v59 + 104))(v57, v58);
  if (_MergedGlobals_216 != -1)
  {
    OUTLINED_FUNCTION_10_94(&_MergedGlobals_216);
  }

  v60 = sub_1E38F08C4(qword_1ECF71538);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0B0, &qword_1E42C3960);
  *&v57[*(v61 + 52)] = v60;
  *&v57[*(v61 + 56)] = 256;
  sub_1E4203DA4();
  sub_1E4200D94();
  v62 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35260, &qword_1E42C3968) + 36)];
  v63 = v86;
  *v62 = v85;
  *(v62 + 1) = v63;
  *(v62 + 2) = v87;
  v64 = v40;
  *&v63 = v39;
  v65 = v38;
  v66 = v37;
  MinY = CGRectGetMinY(*(&v63 - 8));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35268, &unk_1E42C3970);
  v69 = &v57[*(result + 36)];
  *v69 = v40;
  v69[1] = MinY;
  return result;
}

void sub_1E3C03ACC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v13 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SelectionHighlightPreferenceData(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  OUTLINED_FUNCTION_57_4();
  sub_1E4207954();
  OUTLINED_FUNCTION_29_55();
  swift_allocObject();
  v9 = sub_1E42062E4();
  v11 = v10;
  sub_1E42074C4();
  sub_1E3C03C48(v6, v1, AssociatedTypeWitness, v11, AssociatedConformanceWitness);
  OUTLINED_FUNCTION_57_4();
  sub_1E4206374();
  *v13 = v9;

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C03C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for SelectionHighlightPreferenceData(0, a3, a5, v9);
  *(a4 + *(result + 36)) = a2;
  return result;
}

void sub_1E3C03CC4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v19[1] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v19 - v17;
  sub_1E42074C4();
  v20[0] = v7;
  v20[1] = v5;
  v20[2] = v3;
  v20[3] = v1;
  type metadata accessor for HorizontalPicker(0, v20);
  (*(v11 + 16))(v15, v18, AssociatedTypeWitness);
  OUTLINED_FUNCTION_58();
  sub_1E4203AE4();
  sub_1E4203AA4();
  (*(v11 + 8))(v18, AssociatedTypeWitness);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C03E28()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v15 - v12;
  v15[0] = v7;
  v15[1] = v5;
  v15[2] = v3;
  v15[3] = v1;
  type metadata accessor for HorizontalPicker(0, v15);
  OUTLINED_FUNCTION_58();
  v14 = sub_1E4203AE4();
  MEMORY[0x1E690E3F0](v14);
  swift_getAssociatedConformanceWitness();
  sub_1E4205E84();
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C03F78()
{
  v0 = OUTLINED_FUNCTION_59_20();
  type metadata accessor for SelectionHighlightPreferenceData(v0, v1, v2, v3);
  OUTLINED_FUNCTION_59_20();

  return sub_1E4206304();
}

uint64_t sub_1E3C03FAC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2();
  v6 = OUTLINED_FUNCTION_52_3();
  type metadata accessor for SelectionHighlightPreferenceData(v6, v7, a5, v8);
  OUTLINED_FUNCTION_59_20();
  sub_1E4206374();
  OUTLINED_FUNCTION_15_6();
  swift_getWitnessTable();
  return sub_1E4206344();
}

uint64_t sub_1E3C04030@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3C03F78();
  *a1 = result;
  return result;
}

uint64_t sub_1E3C04060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v7 = *(a4 + 16);
  v8 = v4;
  v9 = a2;
  v10 = a3;
  return sub_1E3C03FAC(a1, sub_1E3C05230, &v6, v7, v4);
}

uint64_t sub_1E3C040D0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1E4201B84();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35238, &qword_1E42C3648);
  return sub_1E4202614();
}

unint64_t sub_1E3C04158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35220;
  if (!qword_1ECF35220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35220);
  }

  return result;
}

void sub_1E3C041BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_49_33(a1, a2, a3, a4, a5, a6, a7, a8, *(v8 + 16));
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_30_48();

  sub_1E3C0331C();
}

unint64_t sub_1E3C04264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3C0428C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3C0428C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE287D78[0];
  if (!qword_1EE287D78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE287D78);
  }

  return result;
}

uint64_t sub_1E3C04324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1E3C043B8(uint64_t a1)
{
  sub_1E3C04D24(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1E4203AE4();
    if (v2 <= 0x3F)
    {
      sub_1E4206374();
      if (v3 <= 0x3F)
      {
        sub_1E37E0144();
        if (v4 <= 0x3F)
        {
          sub_1E3C051CC(319, &qword_1EE23ACC8, &unk_1ECF2C3F0, qword_1E42A0B50);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E3C044FC(int *a1, unsigned int a2)
{
  v4 = sub_1E4201324();
  OUTLINED_FUNCTION_17_2(v4);
  if (*(v5 + 64) <= 8uLL)
  {
    v6 = 8;
  }

  else
  {
    v6 = *(v5 + 64);
  }

  result = swift_getAssociatedTypeWitness();
  v8 = *(result - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (!a2)
  {
    return 0;
  }

  v12 = v11 | 7;
  v13 = v6 + (v11 | 7) + 1;
  if (v10 >= a2)
  {
LABEL_28:
    v22 = ((((a1 + v13) & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v9 & 0x80000000) != 0)
    {

      return __swift_getEnumTagSinglePayload((v22 + v11 + 8) & ~v11, v9, result);
    }

    else
    {
      v23 = *v22;
      if (v23 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      return (v23 + 1);
    }
  }

  else
  {
    v14 = ((((((*(*(result - 8) + 64) + ((v11 + 16) & ~v11) + (v13 & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v15 = v14 & 0xFFFFFFF8;
    if ((v14 & 0xFFFFFFF8) != 0)
    {
      v16 = 2;
    }

    else
    {
      v16 = a2 - v10 + 1;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    switch(v18)
    {
      case 1:
        v19 = *(a1 + v14);
        if (!v19)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 2:
        v19 = *(a1 + v14);
        if (!v19)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v19 = *(a1 + v14);
        if (!v19)
        {
          goto LABEL_28;
        }

LABEL_25:
        v20 = v19 - 1;
        if (v15)
        {
          v20 = 0;
          v21 = *a1;
        }

        else
        {
          v21 = 0;
        }

        result = v10 + (v21 | v20) + 1;
        break;
      default:
        goto LABEL_28;
    }
  }

  return result;
}

void sub_1E3C04710(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = sub_1E4201324();
  OUTLINED_FUNCTION_17_2(v6);
  if (*(v7 + 64) <= 8uLL)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(v7 + 64);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = v8 + (v13 | 7) + 1;
  v15 = ((((((*(*(AssociatedTypeWitness - 8) + 64) + ((v13 + 16) & ~v13) + (v14 & ~(v13 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if (((((((*(*(AssociatedTypeWitness - 8) + 64) + ((v13 + 16) & ~v13) + (v14 & ~(v13 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v12 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v18)
    {
      case 1:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_46:
        __break(1u);
        break;
      case 4:
        *(a1 + v15) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v21 = ((((a1 + v14) & ~(v13 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v11 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v21 + v13 + 8) & ~v13, a2, v11, AssociatedTypeWitness);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v22 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v22 = (a2 - 1);
            }

            *v21 = v22;
          }
        }

        break;
    }
  }

  else
  {
    if (((((((*(*(AssociatedTypeWitness - 8) + 64) + ((v13 + 16) & ~v13) + (v14 & ~(v13 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = a2 - v12;
    }

    else
    {
      v19 = 1;
    }

    if (((((((*(*(AssociatedTypeWitness - 8) + 64) + ((v13 + 16) & ~v13) + (v14 & ~(v13 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v20 = ~v12 + a2;
      bzero(a1, v15);
      *a1 = v20;
    }

    switch(v18)
    {
      case 1:
        *(a1 + v15) = v19;
        break;
      case 2:
        *(a1 + v15) = v19;
        break;
      case 3:
        goto LABEL_46;
      case 4:
        *(a1 + v15) = v19;
        break;
      default:
        return;
    }
  }
}

void sub_1E3C04978(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E3C04D24(319, &qword_1ECF35240, type metadata accessor for CGRect, MEMORY[0x1E6981798]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

int *sub_1E3C04A30(int *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v14 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v14 >= 0xFFFFFFFF)
      {
        LODWORD(v14) = -1;
      }

      return (v14 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

LABEL_22:
        if ((v8 & 0xFFFFFFF8) != 0)
        {
          v10 = *result;
        }

        result = OUTLINED_FUNCTION_34_47(v10);
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1E3C04B5C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v20 = (a2 - 1);
            }

            *v19 = v20;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      v17 = OUTLINED_FUNCTION_32_0();
      bzero(v17, v18);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v10) = v15;
        break;
      case 2:
        *(a1 + v10) = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v10) = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1E3C04D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E3C04D88(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E3C05874(319, &qword_1EE23B5F8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E3C051CC(319, &qword_1EE23B608, &qword_1ECF2A770, &qword_1E42992B0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

int *sub_1E3C04E74(int *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v16 = (result + v7 + 8) & ~v7;
    if (v6 < 0x7FFFFFFE)
    {
      v17 = *(((v9 + v16) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      if ((v17 + 1) >= 2)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v16, v6, v4);
    }
  }

  else
  {
    v10 = ((((v9 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        if (!*(result + v10))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        if (!*(result + v10))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        if (!*(result + v10))
        {
          goto LABEL_26;
        }

LABEL_22:
        if ((v10 & 0xFFFFFFF8) != 0)
        {
          v12 = *result;
        }

        result = OUTLINED_FUNCTION_34_47(v12);
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1E3C04FCC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        *(a1 + v12) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v12) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v12) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v21 = (a1 + v10 + 8) & ~v10;
          if (v8 < 0x7FFFFFFE)
          {
            v22 = ((v11 + v21) & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v22 = 0;
              v22[1] = 0;
              *v22 = a2 - 0x7FFFFFFF;
            }

            else
            {
              v22[1] = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v18 = ~v9 + a2;
      v19 = OUTLINED_FUNCTION_32_0();
      bzero(v19, v20);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        *(a1 + v12) = v17;
        break;
      case 2:
        *(a1 + v12) = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v12) = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1E3C051CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1E4207104();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1E3C05268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v12 = *(v9 + 16);
  v13 = OUTLINED_FUNCTION_49_33(a1, a2, a3, a4, a5, a6, a7, a8, v12);
  v14 = *(v9 + ((*(*(v13 - 8) + 64) + ((*(*(v13 - 8) + 80) + 48) & ~*(*(v13 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = OUTLINED_FUNCTION_49_33(v13 - 8, v15, v16, v17, v18, v19, v20, v21, v12);
  return sub_1E3C03480(a1, v14, v22, a9);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 32);
  v21[0] = *(v0 + 16);
  v20 = v1;
  v21[1] = v1;
  v2 = type metadata accessor for HorizontalPicker(0, v21);
  OUTLINED_FUNCTION_29_55();
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v0 + v4);
  }

  else
  {
  }

  v7 = v5 + *(v2 + 52);

  OUTLINED_FUNCTION_40_45(v8, v9, v10, v11, v12, v13, v14, v15, v20);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1E4203AE4();
  OUTLINED_FUNCTION_60_20();
  (*(v17 + 8))(v7 + v18, AssociatedTypeWitness);

  if (*(v5 + *(v2 + 64)))
  {
  }

  return swift_deallocObject();
}

void sub_1E3C05544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_49_33(a1, a2, a3, a4, a5, a6, a7, a8, *(v8 + 16));
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_30_48();

  sub_1E3C01C20();
}

unint64_t sub_1E3C055D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2883B0;
  if (!qword_1EE2883B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883B0);
  }

  return result;
}

uint64_t sub_1E3C05668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[2];
  v10 = v8[3];
  v11 = v8[4];
  v12 = v8[5];
  v13 = *(OUTLINED_FUNCTION_49_33(a1, a2, a3, a4, a5, a6, a7, a8, v9) - 8);
  v14 = v8 + ((*(v13 + 80) + 48) & ~*(v13 + 80));
  MEMORY[0x1E690E740](0.5, 0.8, 0.4);
  sub_1E4200FE4();

  v17[0] = v9;
  v17[1] = v10;
  v17[2] = v11;
  v17[3] = v12;
  result = type metadata accessor for HorizontalPicker(0, v17);
  v16 = *&v14[*(result + 64)];
  if (v16)
  {
    (*(v11 + 24))(v9, v11);
    v16();
  }

  return result;
}

uint64_t sub_1E3C057F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E3C05874(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_56_24@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 152) = result;
  *(v2 - 144) = a2;
  return result;
}

uint64_t sub_1E3C05904()
{
  type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext(0);
  v0 = OUTLINED_FUNCTION_28_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

__n128 sub_1E3C05940@<Q0>(char a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u8[0] = a1 & 1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

uint64_t sub_1E3C059A8(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 152))
  {
    v3 = *(v2 + 152);
  }

  else
  {
    v4 = v2;
    OUTLINED_FUNCTION_15_0(v2 + 128, a2);
    swift_unknownObjectWeakLoadStrong();
    type metadata accessor for Tier1LiveUpdateProvider();
    v3 = swift_allocObject();

    sub_1E3C09480();
    *(v4 + 152) = v3;
  }

  return v3;
}

uint64_t sub_1E3C05A88()
{
  OUTLINED_FUNCTION_26_62();
  v0 = swift_allocObject();
  sub_1E3C09480();
  return v0;
}

uint64_t sub_1E3C05B10()
{
  type metadata accessor for Tier1PlusLiveUpdateProvider.SubscriptionTaskActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1ECF71548 = v0;
  return result;
}

uint64_t sub_1E3C05B4C()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_1E3C05B84()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E3C05BD8()
{
  if (qword_1EE2945C0 != -1)
  {
    OUTLINED_FUNCTION_0_179(&qword_1EE2945C0);
  }
}

uint64_t sub_1E3C05C24(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for Tier1PlusLiveUpdateProvider.SubscriptionTaskActor();

  return MEMORY[0x1EEE6DBF0](updated, a2);
}

uint64_t sub_1E3C05C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = swift_allocObject();
  sub_1E3C05CB4();
  return v3;
}

void sub_1E3C05CB4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v40 = v2;
  v41 = v3;
  v42 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v39 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v43 = v7 - v6;
  v38 = sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v37 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E4206974();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v14 = sub_1E4203FF4();
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_8();
  sub_1E41FE614();
  v17 = sub_1E41FE5E4();
  v19 = v18;
  v20 = OUTLINED_FUNCTION_57();
  v21(v20);
  *(v0 + 16) = v17;
  *(v0 + 24) = v19;
  *(v0 + 120) = 0;
  *(v0 + 136) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 144) = 0;
  v22 = MEMORY[0x1E69E7CD0];
  *(v0 + 152) = 0;
  *(v0 + 160) = v22;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  sub_1E32ADE38();
  sub_1E4203FE4();
  v44[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_19_79();
  sub_1E328FC64(v23, 255, v24, MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326B0, &qword_1E429D100);
  OUTLINED_FUNCTION_4_146();
  sub_1E32752B0(v25, &unk_1ECF326B0, &qword_1E429D100, v26);
  sub_1E42072E4();
  (*(v37 + 104))(v12, *MEMORY[0x1E69E8090], v38);
  *(v0 + 184) = sub_1E4206A44();
  memcpy((v0 + 32), v40, 0x58uLL);
  OUTLINED_FUNCTION_3_0(v0 + 128, &v45);
  *(v0 + 136) = v41;
  swift_unknownObjectWeakAssign();
  sub_1E3C0596C(v40, v44);
  v27 = sub_1E3E37F30();
  (*(v39 + 16))(v43, v27, v42);
  sub_1E3C0596C(v40, v44);

  v28 = sub_1E41FFC94();
  v29 = sub_1E42067E4();

  sub_1E3C09510(v40);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v30 = 136315394;
    v31 = *(v1 + 16);
    v32 = *(v1 + 24);

    v33 = sub_1E3270FC8(v31, v32, v44);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    v34 = v40[1];
    v35 = v40[2];

    sub_1E3C09510(v40);
    v36 = sub_1E3270FC8(v34, v35, v44);

    *(v30 + 14) = v36;
    _os_log_impl(&dword_1E323F000, v28, v29, "Tier1PlusLiveUpdateProvider: init - consumer %s for '%s'", v30, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1E3C09510(v40);
  }

  (*(v39 + 8))(v43, v42);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C061C4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_35_3();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_8();
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 24);
  v25 = *(v0 + 16);

  v11 = sub_1E3E37F30();
  (*(v6 + 16))(v0, v11, v4);

  v12 = sub_1E41FFC94();
  v13 = sub_1E42067E4();

  if (os_log_type_enabled(v12, v13))
  {
    v24 = v10;
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1E3270FC8(*(v0 + 16), *(v0 + 24), &v26);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1E3270FC8(v8, v9, &v26);
    _os_log_impl(&dword_1E323F000, v12, v13, "Tier1PlusLiveUpdateProvider: deinit - unsubscribe consumer %s from '%s'", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v10 = v24;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v6 + 8))(v0, v4);
  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v25;
  v19[5] = v10;
  v19[6] = v8;
  v19[7] = v9;
  v20 = OUTLINED_FUNCTION_23_7();
  sub_1E3C066E8(v20, v21, v1, v22, v23);

  sub_1E325F6F0(v1, &unk_1ECF2C400, &qword_1E429ABE0);

  sub_1E32AF6F8(v0 + 128);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C064D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C064EC()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 56) = *sub_1E3C7AFC8();

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1E3C065A0;

  return sub_1E3C7BB58();
}

uint64_t sub_1E3C065A0()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    v4 = sub_1E3C0A048;
  }

  else
  {

    v4 = sub_1E3C066E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E3C066E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1E325A828(a3, v24 - v10);
  v12 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F6F0(v11, &unk_1ECF2C400, &qword_1E429ABE0);
  }

  else
  {
    sub_1E4206464();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E42063B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E4205FB4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36400, &qword_1E42BB7B0);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36400, &qword_1E42BB7B0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1E3C06990()
{
  sub_1E3C061C4();

  return MEMORY[0x1EEE6BDC0](v0, 192, 7);
}

void sub_1E3C069C4()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v15 = OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  swift_weakInit();
  v16[4] = sub_1E3C09B60;
  v16[5] = v5;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
  v16[2] = v6;
  v16[3] = &block_descriptor_76;
  v7 = _Block_copy(v16);

  sub_1E4203FE4();
  OUTLINED_FUNCTION_18_71();
  sub_1E328FC64(v8, 255, v9, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_4_146();
  v12 = sub_1E32752B0(v10, &qword_1ECF2A730, &qword_1E429B000, v11);
  OUTLINED_FUNCTION_43_41(v12);
  OUTLINED_FUNCTION_55_30();
  _Block_release(v7);
  v13 = OUTLINED_FUNCTION_60_21();
  v14(v13);
  (*(v3 + 8))(v0, v15);

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3C06BE0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_5_0(a1 + 16, v17);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 176) & 1) == 0)
    {
      *(Strong + 176) = 1;
      sub_1E3C06D04();
      sub_1E4206474();
      v7 = OUTLINED_FUNCTION_28_10();
      __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
      OUTLINED_FUNCTION_4_0();
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v11;
      v13 = OUTLINED_FUNCTION_23_7();
      sub_1E376FE58(v13, v14, v1, v15, v16);
    }
  }

  return result;
}

void sub_1E3C06D04()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA90, &unk_1E42982A0);
  OUTLINED_FUNCTION_0_10();
  v21 = v5;
  v22 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_35_3();
  v8 = sub_1E4205754();
  v9 = swift_allocBox();
  (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69D3B98], v8);
  sub_1E4205004();
  v11 = sub_1E4204FF4();
  v12 = sub_1E4204FB4();

  v23 = v12;
  sub_1E32ADE38();
  v13 = sub_1E4206A04();
  v24 = v13;
  sub_1E42069A4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C08, &unk_1E42E3A90);
  sub_1E32752B0(&qword_1EE28A210, &qword_1ECF28C08, &unk_1E42E3A90, MEMORY[0x1E695BED8]);
  sub_1E328FC64(&qword_1EE23B1E0, 255, sub_1E32ADE38, MEMORY[0x1E69E8028]);
  sub_1E42007D4();
  sub_1E325F6F0(v4, &unk_1ECF2D2B0, &unk_1E429D3D0);

  OUTLINED_FUNCTION_4_0();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v9;
  sub_1E32752B0(&qword_1EE28A2A0, &unk_1ECF3DA90, &unk_1E42982A0, MEMORY[0x1E695BE98]);

  OUTLINED_FUNCTION_40_1();
  v20 = v21;
  sub_1E4200844();

  (*(v22 + 8))(v0, v20);
  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C07070()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_92();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1E3C0713C;

    return sub_1E3C07220();
  }

  else
  {
    OUTLINED_FUNCTION_54();

    return v4();
  }
}

uint64_t sub_1E3C0713C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3C07220()
{
  OUTLINED_FUNCTION_24();
  v1[35] = v0;
  v2 = sub_1E41FFCB4();
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v3);
  v1[39] = swift_task_alloc();
  if (qword_1EE2945C0 != -1)
  {
    OUTLINED_FUNCTION_0_179(&qword_1EE2945C0);
  }

  v4 = qword_1ECF71548;

  return MEMORY[0x1EEE6DFA0](sub_1E3C07334, v4, 0);
}

uint64_t sub_1E3C07334()
{
  v28 = v0;
  v1 = v0[35];
  v2 = v1;
  if (v1[21])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    sub_1E42064D4();

    v2 = v0[35];
  }

  v3 = v0[39];
  v4 = v0[37];
  v25 = v0[38];
  v26 = v0[36];
  memcpy(v0 + 2, v2 + 4, 0x58uLL);
  v5 = v2[2];
  v6 = v2[3];
  v7 = sub_1E3E36DD8(0x7FFFFFFFFFFFFFFFLL, 0x403E000000000000, 1);
  v9 = v8;
  sub_1E4206444();
  v10 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
  v11 = swift_allocObject();
  memcpy(v11 + 2, v0 + 2, 0x58uLL);
  v11[13] = v2;
  v11[14] = v5;
  v11[15] = v6;
  sub_1E3C0596C((v0 + 2), (v0 + 13));

  v12 = sub_1E3E36FC4(v3, v7, v9, &unk_1E42C39B8, v11, MEMORY[0x1E69E7CA8] + 8);

  sub_1E325F6F0(v3, &unk_1ECF2C400, &qword_1E429ABE0);
  v1[21] = v12;

  v13 = sub_1E3E37F30();
  (*(v4 + 16))(v25, v13, v26);
  sub_1E3C0596C((v0 + 2), (v0 + 24));
  v14 = sub_1E41FFC94();
  LOBYTE(v12) = sub_1E42067E4();
  sub_1E3C09510((v0 + 2));
  v15 = os_log_type_enabled(v14, v12);
  v16 = v0[37];
  v17 = v0[38];
  v18 = v0[36];
  if (v15)
  {
    v19 = OUTLINED_FUNCTION_6_21();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1E3270FC8(v0[3], v0[4], &v27);
    OUTLINED_FUNCTION_7_34(&dword_1E323F000, v21, v22, "Tier1PlusLiveUpdateProvider: subscribe: %s");
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();
  }

  swift_unknownObjectRelease();

  (*(v16 + 8))(v17, v18);

  OUTLINED_FUNCTION_54();

  return v23();
}

void sub_1E3C07600()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v18 = OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  v19[4] = sub_1E3C09C30;
  v19[5] = v8;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
  v19[2] = v9;
  v19[3] = &block_descriptor_19_1;
  v10 = _Block_copy(v19);

  sub_1E4203FE4();
  OUTLINED_FUNCTION_18_71();
  sub_1E328FC64(v11, 255, v12, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_4_146();
  v15 = sub_1E32752B0(v13, &qword_1ECF2A730, &qword_1E429B000, v14);
  OUTLINED_FUNCTION_43_41(v15);
  OUTLINED_FUNCTION_55_30();
  _Block_release(v10);
  v16 = OUTLINED_FUNCTION_60_21();
  v17(v16);
  (*(v5 + 8))(v0, v18);

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3C07840(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21[-v6];
  OUTLINED_FUNCTION_5_0(a1 + 16, v22);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (*(Strong + 176) == 1)
    {
      *(Strong + 176) = 0;
      OUTLINED_FUNCTION_3_0(Strong + 160, v21);
      *(v10 + 160) = MEMORY[0x1E69E7CD0];

      sub_1E4206474();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
      OUTLINED_FUNCTION_4_0();
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 32) = v15;
      *(v16 + 40) = a2 & 1;
      v17 = OUTLINED_FUNCTION_23_7();
      sub_1E376FE58(v17, v18, v7, v19, v20);
    }
  }

  return result;
}

uint64_t sub_1E3C0799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C079B4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_92();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    if (qword_1EE2945C0 != -1)
    {
      OUTLINED_FUNCTION_0_179(&qword_1EE2945C0);
    }

    v2 = qword_1ECF71548;

    return MEMORY[0x1EEE6DFA0](sub_1E3C07A74, v2, 0);
  }

  else
  {
    OUTLINED_FUNCTION_54();

    return v3();
  }
}

uint64_t sub_1E3C07A74()
{
  OUTLINED_FUNCTION_24();
  sub_1E3C07B2C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1E3C07AD4()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3C07B2C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_35_3();
  if (v2[21])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    sub_1E42064D4();
  }

  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = qword_1EE2945C0;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_0_179(&qword_1EE2945C0);
  }

  v19 = qword_1ECF71548;
  OUTLINED_FUNCTION_17_85();
  v23 = sub_1E328FC64(v20, v21, v22, &unk_1E42C39F0);
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = v23;
  *(v24 + 32) = v2;
  *(v24 + 40) = v4 & 1;

  v25 = OUTLINED_FUNCTION_23_7();
  sub_1E3797438(v25, v26, v1, v27, v24);

  sub_1E3C08020();
  v28 = sub_1E3E37F30();
  (*(v7 + 16))(v11, v28, v5);

  v29 = sub_1E41FFC94();
  v30 = sub_1E42067E4();

  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_6_21();
    v31 = OUTLINED_FUNCTION_11_16();
    v32 = v31;
    *v19 = 136315138;
    *(v19 + 4) = sub_1E3270FC8(v2[5], v2[6], &v32);
    _os_log_impl(&dword_1E323F000, v29, v30, "Tier1PlusLiveUpdateProvider: unsubscribe: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v7 + 8))(v11, v5);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3C07DFC()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_8();
  if ((*(v0 + 144) & 1) == 0)
  {
    sub_1E3E37F30();
    v4 = OUTLINED_FUNCTION_48_30();
    v5(v4);

    v6 = sub_1E41FFC94();
    v7 = sub_1E42067E4();

    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_6_21();
      v8 = OUTLINED_FUNCTION_11_16();
      v15 = v8;
      *v1 = 136315138;
      *(v1 + 4) = sub_1E3270FC8(*(v0 + 40), *(v0 + 48), &v15);
      OUTLINED_FUNCTION_62_19(&dword_1E323F000, v9, v10, "Tier1PlusLiveUpdateProvider: Starting Tier 1 fallback provider: %s");
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_6_0();
    }

    v11 = OUTLINED_FUNCTION_57();
    v13 = v12(v11);
    *(v0 + 144) = 1;
    sub_1E3C059A8(v13, v14);
    sub_1E3C07F70();
  }

  return result;
}

double sub_1E3C07F70()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_50_1();
  sub_1E4206474();
  v4 = OUTLINED_FUNCTION_28_10();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_64_18(v8);
  v9 = OUTLINED_FUNCTION_23_7();
  sub_1E376FE58(v9, v10, v0, v11, v1);

  return result;
}

double sub_1E3C08020()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_8();
  if (*(v0 + 144) == 1)
  {
    sub_1E3E37F30();
    v4 = OUTLINED_FUNCTION_48_30();
    v5(v4);

    v6 = sub_1E41FFC94();
    v7 = sub_1E42067E4();

    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_6_21();
      v8 = OUTLINED_FUNCTION_11_16();
      v15 = v8;
      *v1 = 136315138;
      *(v1 + 4) = sub_1E3270FC8(*(v0 + 40), *(v0 + 48), &v15);
      OUTLINED_FUNCTION_62_19(&dword_1E323F000, v9, v10, "Tier1PlusLiveUpdateProvider: Stopping Tier 1 fallback provider: %s");
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_6_0();
    }

    v11 = OUTLINED_FUNCTION_57();
    v13 = v12(v11);
    *(v0 + 144) = 0;
    sub_1E3C059A8(v13, v14);
    sub_1E3C08198();
  }

  return result;
}

double sub_1E3C08198()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_50_1();
  sub_1E4206474();
  v4 = OUTLINED_FUNCTION_28_10();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_64_18(v8);
  v9 = OUTLINED_FUNCTION_23_7();
  sub_1E376FE58(v9, v10, v0, v11, v1);

  return result;
}

void sub_1E3C08248()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = *v3;
  v17 = swift_projectBox();
  OUTLINED_FUNCTION_5_0(v1 + 16, &v37);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (*(Strong + 144) == 1)
    {
      sub_1E3C08020();
    }

    v32 = sub_1E42056A4();
    sub_1E4205044();
    OUTLINED_FUNCTION_3_0(v17, &v36);
    (*(v6 + 40))(v17, v15, v4);
    v20 = sub_1E42056D4();
    v21 = sub_1E3C085A8(v20);

    OUTLINED_FUNCTION_5_0(v19 + 128, &v35);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v19 + 136);
      ObjectType = swift_getObjectType();
      (*(v22 + 32))(v21, ObjectType, v22);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    OUTLINED_FUNCTION_5_0(v17, &v34);
    (*(v6 + 16))(v12, v17, v4);
    (*(v6 + 32))(v9, v12, v4);
    if ((*(v6 + 88))(v9, v4) != *MEMORY[0x1E69D3B98])
    {
      (*(v6 + 8))(v9, v4);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v19 + 136);
        v25 = swift_getObjectType();
        (*(v24 + 8))(v16, v25, v24);
        swift_unknownObjectRelease();
      }
    }

    v26 = sub_1E4205694();
    OUTLINED_FUNCTION_3_0(v19 + 120, &v33);
    *(v19 + 120) = v26 & 1;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(v19 + 136);
      v28 = swift_getObjectType();
      v29 = v32;
      v30 = sub_1E4205024();
      (*(v27 + 24))(v30, v28, v27);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C085A8(uint64_t a1)
{
  v45 = sub_1E4204DD4();
  v3 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v35 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v35[1] = v1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E3746CB0(0, v7, 0);
  v8 = v50;
  result = sub_1E3746DC4(a1);
  v12 = 0;
  v13 = a1 + 56;
  v41 = v3 + 16;
  v42 = v3;
  v39 = a1;
  v40 = v3 + 8;
  v36 = a1 + 64;
  v37 = v7;
  v38 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v13 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_25;
      }

      v49 = v11;
      v47 = result;
      v48 = v10;
      v46 = v12;
      v16 = *(a1 + 48);
      v17 = v8;
      v18 = v42;
      v19 = v43;
      v20 = *(v42 + 16);
      v21 = v45;
      v20(v43, v16 + *(v42 + 72) * result, v45);
      v22 = v44;
      v20(v44, v19, v21);
      v23 = sub_1E3D5C7A0(v22);
      v24 = *(v18 + 8);
      v8 = v17;
      result = v24(v19, v21);
      v50 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1E3746CB0((v25 > 1), v26 + 1, 1);
        v8 = v50;
      }

      *(v8 + 16) = v26 + 1;
      *(v8 + v26 + 32) = v23;
      if (v49)
      {
        goto LABEL_29;
      }

      v13 = v38;
      a1 = v39;
      v27 = 1 << *(v39 + 32);
      result = v47;
      if (v47 >= v27)
      {
        goto LABEL_26;
      }

      v28 = *(v38 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_27;
      }

      if (*(v39 + 36) != v48)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v47 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v36 + 8 * v14);
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1E3746E04(v47, v48, 0);
            v27 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        sub_1E3746E04(v47, v48, 0);
      }

LABEL_19:
      v12 = v46 + 1;
      if (v46 + 1 == v37)
      {
        return v8;
      }

      v11 = 0;
      v10 = *(a1 + 36);
      result = v27;
      if (v27 < 0)
      {
        break;
      }
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
LABEL_29:
  __break(1u);
  return result;
}

BOOL sub_1E3C088F4()
{
  sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_8();
  v1 = OUTLINED_FUNCTION_57();
  v2(v1);
  v3 = OUTLINED_FUNCTION_16_0();
  v5 = v4(v3);
  v6 = *MEMORY[0x1E69D3B98];
  if (v5 != *MEMORY[0x1E69D3B98])
  {
    v7 = OUTLINED_FUNCTION_16_0();
    v8(v7);
  }

  return v5 != v6;
}

uint64_t sub_1E3C089EC()
{
  OUTLINED_FUNCTION_24();
  v0[28] = v1;
  v0[29] = v2;
  v0[26] = v3;
  v0[27] = v4;
  v0[24] = v5;
  v0[25] = v6;
  v7 = sub_1E41FFCB4();
  v0[30] = v7;
  v0[31] = *(v7 - 8);
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3C08AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v12 = v11[25];
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 24);
  if (v14(ObjectType, v12) >= 1)
  {
    v15 = v11[33];
    v16 = v11[30];
    v17 = v11[31];
    v18 = v11[26];
    v19 = sub_1E3E37F30();
    (*(v17 + 16))(v15, v19, v16);
    sub_1E3C0596C(v18, (v11 + 13));
    v20 = sub_1E41FFC94();
    LOBYTE(v17) = sub_1E42067E4();
    sub_1E3C09510(v18);
    v21 = os_log_type_enabled(v20, v17);
    v22 = v11[33];
    v24 = v11[30];
    v23 = v11[31];
    if (v21)
    {
      v42 = v11[33];
      v25 = v11[26];
      v41 = v11[30];
      v26 = OUTLINED_FUNCTION_6_21();
      v27 = swift_slowAlloc();
      v44 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1E3270FC8(*(v25 + 8), *(v25 + 16), &v44);
      OUTLINED_FUNCTION_7_34(&dword_1E323F000, v28, v29, "Tier1PlusLiveUpdateProvider: retrying subscribeToEvents: %s");
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();

      (*(v23 + 8))(v42, v41);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    if (v14(ObjectType, v11[25]) >= 3)
    {
      sub_1E3C07DFC();
    }
  }

  v30 = v11[26];
  v11[34] = *sub_1E3C7AFC8();
  v31 = *v30;
  v32 = v30[1];
  v11[35] = v32;
  v33 = v30[2];
  v11[36] = v33;
  v34 = v30[3];
  v35 = v30[4];
  v36 = v30[5];

  v37 = swift_task_alloc();
  v11[37] = v37;
  *v37 = v11;
  v37[1] = sub_1E3C08D34;
  v38 = v11[28];
  v39 = v11[29];

  return sub_1E3C7B4AC(v31, v38, v39, v32, v33, v34, v35, v36, a9, a10, a11);
}

uint64_t sub_1E3C08D34()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (v0)
  {
    v7 = sub_1E3C08FEC;
  }

  else
  {

    v7 = sub_1E3C08E3C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E3C08E3C(uint64_t a1)
{
  v22 = v1;
  v3 = v1[31];
  v2 = v1[32];
  v4 = v1[30];
  v5 = v1[26];
  v6 = sub_1E3E37F30();
  (*(v3 + 16))(v2, v6, v4);
  sub_1E3C0596C(v5, (v1 + 2));
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();
  sub_1E3C09510(v5);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = v1[35];
    v9 = v1[36];
    v12 = v1[31];
    v11 = v1[32];
    v13 = v1[30];
    v14 = OUTLINED_FUNCTION_6_21();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1E3270FC8(v10, v9, &v21);
    _os_log_impl(&dword_1E323F000, v7, v8, "Tier1PlusLiveUpdateProvider: subscribeToEvent success: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v12 + 8))(v11, v13);
  }

  else
  {
    v17 = v1[31];
    v16 = v1[32];
    v18 = v1[30];

    (*(v17 + 8))(v16, v18);
  }

  OUTLINED_FUNCTION_54();

  return v19();
}

uint64_t sub_1E3C08FEC()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C0905C()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 64) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  if (qword_1EE2945C0 != -1)
  {
    OUTLINED_FUNCTION_0_179(&qword_1EE2945C0);
  }

  v4 = qword_1ECF71548;
  *(v0 + 32) = qword_1ECF71548;

  return MEMORY[0x1EEE6DFA0](sub_1E3C090E8, v4, 0);
}

uint64_t sub_1E3C090E8(__n128 a1)
{
  *(v1 + 40) = *sub_1E3C7AFC8();

  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1E3C091C0;

  return sub_1E3C7BB58();
}

uint64_t sub_1E3C091C0()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 56) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {

    v6 = sub_1E3C0A04C;
  }

  else
  {

    v6 = sub_1E3C09314;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E3C09354()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_14_0(v1 + 128, v2);
  *(v1 + 136) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1E3C093A4()
{
  v2 = OUTLINED_FUNCTION_61_19();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_27_50(v3);
  OUTLINED_FUNCTION_36_38(v0 + 128);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v0 + 136);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v5;
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3C09408()
{
  OUTLINED_FUNCTION_49_34();
  *(v2 + 136) = v3;
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t sub_1E3C09480()
{
  OUTLINED_FUNCTION_26_62();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = v7;
  *(v1 + 40) = v6;
  *(v1 + 48) = v5;
  *(v1 + 56) = v4;
  OUTLINED_FUNCTION_14_0(v1 + 16, v9);
  *(v1 + 24) = v3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 80) = v8;
  return v1;
}

uint64_t sub_1E3C09554()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_92();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 40);
    *(v0 + 56) = *(v2 + 24);
    v3 = sub_1E376DBD0();
    v4 = *v3;
    *(v0 + 64) = *v3;
    *(v0 + 72) = *(v2 + 32);
    *(v0 + 80) = *(v2 + 40);
    *(v0 + 88) = *(v2 + 48);
    *(v0 + 96) = *(v2 + 56);
    *(v0 + 128) = *(v2 + 64);
    *(v0 + 104) = *(v2 + 72);
    *(v0 + 129) = *(v2 + 80);
    v5 = *v4;
    *(v0 + 112) = *(*v4 + 488);
    *(v0 + 120) = (v5 + 488) & 0xFFFFFFFFFFFFLL | 0x306F000000000000;

    v6 = OUTLINED_FUNCTION_32_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_54();

    return v8();
  }
}

uint64_t sub_1E3C0967C()
{
  OUTLINED_FUNCTION_24();
  v5 = *(v0 + 129);
  (*(v0 + 112))(*(v0 + 48), *(v0 + 56), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 128), *(v0 + 104), v5, v0);

  v1 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C09710()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_92();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 40);
    *(v0 + 56) = *(v2 + 24);
    v3 = sub_1E376DBD0();
    v4 = *v3;
    *(v0 + 64) = *v3;
    *(v0 + 72) = *(v2 + 32);
    *(v0 + 80) = *(v2 + 40);
    *(v0 + 104) = *(v2 + 64);
    v5 = *v4;
    *(v0 + 88) = *(*v4 + 496);
    *(v0 + 96) = (v5 + 496) & 0xFFFFFFFFFFFFLL | 0xE5C6000000000000;

    v6 = OUTLINED_FUNCTION_32_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_54();

    return v8();
  }
}

uint64_t sub_1E3C09818()
{
  OUTLINED_FUNCTION_24();
  (*(v0 + 88))(*(v0 + 48), *(v0 + 56), *(v0 + 72), *(v0 + 80), *(v0 + 104));

  v1 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C0988C()
{
  OUTLINED_FUNCTION_24();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C098E4()
{
  sub_1E32AF6F8(v0 + 16);

  return v0;
}

uint64_t sub_1E3C0991C()
{
  sub_1E3C098E4();

  return MEMORY[0x1EEE6BDC0](v0, 81, 7);
}

uint64_t sub_1E3C0998C()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_14_0(v1 + 16, v2);
  *(v1 + 24) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1E3C099DC()
{
  v2 = OUTLINED_FUNCTION_61_19();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_27_50(v3);
  OUTLINED_FUNCTION_36_38(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v0 + 24);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v5;
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3C09A40()
{
  OUTLINED_FUNCTION_49_34();
  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t sub_1E3C09AB4()
{
  v1 = v0[5];
  v3 = v0[6];
  v2 = v0[7];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_14_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_57_18(v5);

  return sub_1E3C064D0(v7, v8, v9, v10, v1, v3, v2);
}

uint64_t sub_1E3C09B70()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E3286A7C;

  return sub_1E3C089EC();
}

uint64_t sub_1E3C09C60()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_57_18(v1);

  return sub_1E3C0905C();
}

uint64_t sub_1E3C09CF8()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_34(v1);

  return sub_1E3C09540(v3, v4, v5, v6);
}

uint64_t sub_1E3C09D7C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_34(v1);

  return sub_1E3C096FC(v3, v4, v5, v6);
}

uint64_t sub_1E3C09E5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1E3C09E9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3C09F20()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_0(v3);
  *v4 = v7;
  v4[1] = sub_1E327C238;

  return sub_1E3C0799C(v4, v5, v6, v1, v2);
}

uint64_t sub_1E3C09FB4()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_34(v1);

  return sub_1E3C0705C(v3, v4, v5, v6);
}

void OUTLINED_FUNCTION_62_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

__n128 sub_1E3C0A0A4@<Q0>(__n128 *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  sub_1E42038E4();
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_5_137();
  sub_1E3C0E828(v3, v4, &unk_1E42BD340);
  v5 = sub_1E4201754();
  v7 = v6;
  type metadata accessor for LibDataSourceManager(0);
  OUTLINED_FUNCTION_6_122();
  sub_1E3C0E828(v8, v9, &unk_1E42BF008);
  a2->n128_u64[0] = sub_1E42010C4();
  a2->n128_u64[1] = v10;
  result = v12;
  a2[1] = v12;
  a2[2].n128_u64[0] = v13;
  a2[2].n128_u64[1] = v5;
  a2[3].n128_u64[0] = v7;
  a2[3].n128_u64[1] = 0x4D7972617262694CLL;
  a2[4].n128_u64[0] = 0xEB000000006E6961;
  return result;
}

void sub_1E3C0A1CC()
{
  OUTLINED_FUNCTION_31_1();
  v89 = v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35288, &qword_1E42C3C38);
  OUTLINED_FUNCTION_0_10();
  v80 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35290, &qword_1E42C3C40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_4();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35298, &qword_1E42C3C48);
  OUTLINED_FUNCTION_0_10();
  v79 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v78 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF352A0, &qword_1E42C3C50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v87 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF352A8, &qword_1E42C3C58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF352B0, &qword_1E42C3C60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v83 = v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF352B8, &qword_1E42C3C68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v78 - v20;
  v22 = v0;
  v23 = *(v0 + 8);
  v24 = (*(*v23 + 456))(v19);
  v25 = sub_1E32AE9B0(v24);

  if (v25)
  {
    v26 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v26 = (*(v27 + 360))();
  }

  OUTLINED_FUNCTION_8();
  if ((*(v28 + 848))())
  {
    if (v26)
    {
      v92 = 0;
      v90 = 0u;
      v91 = 0u;
      OUTLINED_FUNCTION_8();
      v30 = (*(v29 + 312))();
      v31 = (*(*v23 + 872))();
      v32 = sub_1E414B880(&v90, 0, v30 & 1, v31 & 1, &v93);
      v90 = 0u;
      v91 = 0u;
      LOBYTE(v92) = 1;
      v35 = sub_1E3C0D540(v32, v33, v34);
      sub_1E3A6929C(5, 0, 0, 1, &v90, &type metadata for LibEmptyLibraryView, v35);
      sub_1E3C0D710(&v93);
      OUTLINED_FUNCTION_17_6();
      v36 = swift_allocObject();
      OUTLINED_FUNCTION_23_61(v36);
      v37 = &v21[*(v82 + 36)];
      *v37 = sub_1E3C0EB50;
      *(v37 + 1) = v36;
      *(v37 + 2) = 0;
      *(v37 + 3) = 0;
      v38 = &qword_1ECF352B8;
      sub_1E3743538(v21, v15, &qword_1ECF352B8, &qword_1E42C3C68);
      swift_storeEnumTagMultiPayload();
      sub_1E3C0D764(v22, &v93);
      sub_1E3C0D488();
      v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF352F0, &qword_1E42C3C78);
      v40 = sub_1E42026A4();
      OUTLINED_FUNCTION_1_174();
      v43 = sub_1E374AD40(v41, &qword_1ECF352F0, &qword_1E42C3C78, v42);
      OUTLINED_FUNCTION_0_180();
      v46 = sub_1E3C0E828(v44, v45, MEMORY[0x1E697CC30]);
      v93 = v39;
      v94 = v40;
      v95 = v43;
      v96 = v46;
      OUTLINED_FUNCTION_7_141();
      v47 = v83;
      sub_1E4201F44();
      sub_1E3743538(v47, v87, &qword_1ECF352B0, &qword_1E42C3C60);
      swift_storeEnumTagMultiPayload();
      sub_1E3C0D33C();
      sub_1E3C0D594();
      sub_1E4201F44();
      sub_1E325F69C(v47, &qword_1ECF352B0);
      v48 = v21;
LABEL_10:
      sub_1E325F69C(v48, v38);
      goto LABEL_11;
    }

LABEL_9:
    OUTLINED_FUNCTION_8();
    (*(v64 + 904))();
    sub_1E3C0ACB8();
    type metadata accessor for Accessibility();
    sub_1E40A7DC8();

    v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF352C0, &qword_1E42C3C70);
    v66 = sub_1E42026A4();
    OUTLINED_FUNCTION_1_174();
    v69 = sub_1E374AD40(v67, &qword_1ECF352C0, &qword_1E42C3C70, v68);
    OUTLINED_FUNCTION_0_180();
    v72 = sub_1E3C0E828(v70, v71, MEMORY[0x1E697CC30]);
    v93 = v65;
    v94 = v66;
    v95 = v69;
    v96 = v72;
    OUTLINED_FUNCTION_7_141();
    v73 = v81;
    sub_1E4202EA4();

    (*(v80 + 8))(v2, v73);
    v38 = &qword_1ECF35290;
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v74, v75, v76, v77);
    swift_storeEnumTagMultiPayload();
    sub_1E3C0D33C();
    sub_1E3C0D594();
    sub_1E4201F44();
    v48 = v1;
    goto LABEL_10;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1E3C0AA98();
  v49 = v79;
  v50 = v84;
  (*(v79 + 16))(v15, v10, v84);
  swift_storeEnumTagMultiPayload();
  sub_1E3C0D488();
  v51 = OUTLINED_FUNCTION_34();
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v51, v52);
  v54 = sub_1E42026A4();
  OUTLINED_FUNCTION_1_174();
  v57 = sub_1E374AD40(v55, &qword_1ECF352F0, &qword_1E42C3C78, v56);
  OUTLINED_FUNCTION_0_180();
  v60 = sub_1E3C0E828(v58, v59, MEMORY[0x1E697CC30]);
  v93 = v53;
  v94 = v54;
  v95 = v57;
  v96 = v60;
  OUTLINED_FUNCTION_7_141();
  v61 = v83;
  sub_1E4201F44();
  sub_1E3743538(v61, v87, &qword_1ECF352B0, &qword_1E42C3C60);
  swift_storeEnumTagMultiPayload();
  sub_1E3C0D33C();
  sub_1E3C0D594();
  sub_1E4201F44();
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v62, v63);
  (*(v49 + 8))(v10, v50);
LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0AA98()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E42026A4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF352F0, &qword_1E42C3C78);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35388, &qword_1E42C3E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35390, &qword_1E42C3E28);
  sub_1E3C0DB1C();
  sub_1E3C0DC28();
  sub_1E4201DC4();
  sub_1E42023B4();
  OUTLINED_FUNCTION_1_174();
  sub_1E374AD40(v6, &qword_1ECF352F0, &qword_1E42C3C78, v7);
  OUTLINED_FUNCTION_0_180();
  sub_1E3C0E828(v8, v9, MEMORY[0x1E697CC30]);
  OUTLINED_FUNCTION_12_12();
  sub_1E4202CB4();
  v10 = OUTLINED_FUNCTION_13_8();
  v11(v10);
  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0ACB8()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E42026A4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF352C0, &qword_1E42C3C70);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF353B8, &qword_1E42C3E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF353C0, &qword_1E42C3E40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF353C8, &qword_1E42C3E48);
  sub_1E3C0DD78();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35418, &qword_1E42C3E80);
  OUTLINED_FUNCTION_16_90();
  v8 = sub_1E374AD40(v6, &qword_1ECF35418, &qword_1E42C3E80, v7);
  sub_1E32822E0(v8, v9, v10);
  swift_getOpaqueTypeConformance2();
  sub_1E4201DC4();
  sub_1E42023B4();
  OUTLINED_FUNCTION_1_174();
  sub_1E374AD40(v11, &qword_1ECF352C0, &qword_1E42C3C70, v12);
  OUTLINED_FUNCTION_0_180();
  sub_1E3C0E828(v13, v14, MEMORY[0x1E697CC30]);
  OUTLINED_FUNCTION_12_12();
  sub_1E4202CB4();
  v15 = OUTLINED_FUNCTION_13_8();
  v16(v15);
  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C0AF7C(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF353C8, &qword_1E42C3E48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_1();
  sub_1E3C0B0D8();
  v5 = sub_1E3C0B7FC();
  v13 = *a1;
  v6 = *(&v13 + 1);
  v7 = (v1 + *(v3 + 36));
  *v7 = v5;
  v7[1] = v8;
  v7[2] = v6;
  OUTLINED_FUNCTION_17_6();
  v9 = swift_allocObject();
  memcpy((v9 + 16), a1, 0x48uLL);
  sub_1E3743538(&v13, v12, &qword_1ECF35458, &qword_1E42C3EA8);
  sub_1E3C0D764(a1, v12);
  sub_1E3C0DD78();
  v10 = OUTLINED_FUNCTION_51_1();
  sub_1E40AB6EC(v10 & 1);

  return sub_1E325F69C(v1, &qword_1ECF353C8);
}

void sub_1E3C0B0D8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v50 = v3;
  v4 = sub_1E4201574();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF353F8, &qword_1E42C3E78);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_4();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF353E8, &qword_1E42C3E70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF353E0, &unk_1E42C3E60);
  OUTLINED_FUNCTION_0_10();
  v47 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v52 = v20;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF353D8, &unk_1E42C3E50);
  OUTLINED_FUNCTION_0_10();
  v49 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v53 = v23;
  v60 = *(v0 + 16);
  v61 = *(v0 + 32);
  v58 = *(v0 + 16);
  v59 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0, &qword_1E42996C0);
  sub_1E4203914();
  v54 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35460, &qword_1E42C3EB0);
  sub_1E3C0E59C();
  sub_1E4202AD4();
  sub_1E4201564();
  sub_1E374AD40(&qword_1ECF35400, &qword_1ECF353F8, &qword_1E42C3E78, MEMORY[0x1E697CD20]);
  sub_1E42035B4();
  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v1, v11);
  OUTLINED_FUNCTION_17_6();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_23_61(v24);
  v25 = &v17[*(v51 + 36)];
  *v25 = sub_1E3C0E870;
  v25[1] = v24;
  v25[2] = 0;
  v25[3] = 0;
  v58 = v60;
  v59 = v61;
  OUTLINED_FUNCTION_39_38();
  sub_1E42038F4();
  v58 = v55;
  OUTLINED_FUNCTION_17_6();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_23_61(v26);
  OUTLINED_FUNCTION_39_38();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  v28 = sub_1E3C0DF80();
  v29 = sub_1E3C0E09C();
  sub_1E4203524();

  v30 = sub_1E325F69C(v17, &qword_1ECF353E8);
  v31 = *(v2 + 8);
  *&v58 = (*(*v31 + 456))(v30);
  OUTLINED_FUNCTION_17_6();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_23_61(v32);
  OUTLINED_FUNCTION_39_38();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C60, &qword_1E42BD0B0);
  *&v55 = v51;
  *(&v55 + 1) = v27;
  v56 = v28;
  v57 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_1E3C0E118(&qword_1ECF35408, &qword_1ECF33C60);
  v36 = v52;
  v37 = v46;
  sub_1E4203524();

  v38 = (*(v47 + 8))(v36, v37);
  *&v58 = (*(*v31 + 408))(v38);
  OUTLINED_FUNCTION_17_6();
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_23_61(v39);
  OUTLINED_FUNCTION_39_38();
  v40 = OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
  *&v55 = v37;
  *(&v55 + 1) = v33;
  v56 = OpaqueTypeConformance2;
  v57 = v35;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_82();
  sub_1E3C0E118(v42, v43);
  sub_1E4203524();

  v44 = OUTLINED_FUNCTION_57();
  v45(v44);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C0B7FC()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 672))();
  sub_1E37D9AD0(v1, &v6);

  if (v7)
  {
    sub_1E37DADF4(&v6, v8);
    sub_1E327F454(v8, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
    type metadata accessor for LibLocalSource();
    if (swift_dynamicCast())
    {
    }

    else
    {
      v2 = v9;
      v3 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v3 + 24))(v2, v3);
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_1E325F69C(&v6, &unk_1ECF2A740);
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3C0B940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35418, &qword_1E42C3E80);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-v6];
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35428, &qword_1E42C3E88);
  sub_1E3C0E1CC();
  sub_1E42013C4();
  v23 = *(a1 + 16);
  v24 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0, &qword_1E42996C0);
  sub_1E42038F4();
  v8 = v22;
  if (!v22)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_8();
  v10 = (*(v9 + 824))();

  if (!v10)
  {
    v8 = 0;
LABEL_5:
    v11 = 0xE000000000000000;
    goto LABEL_6;
  }

  v8 = *(v10 + 40);
  v11 = *(v10 + 48);

LABEL_6:
  *&v23 = v8;
  *(&v23 + 1) = v11;
  OUTLINED_FUNCTION_16_90();
  v16 = sub_1E374AD40(v12, v13, v14, v15);
  sub_1E32822E0(v16, v17, v18);
  sub_1E4203034();

  return (*(v4 + 8))(v7, v2);
}

void sub_1E3C0BB48()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35450, &qword_1E42C3EA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_139();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35440, &unk_1E42C3E90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_1();
  v12[0] = *(v0 + 16);
  *&v12[1] = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0, &qword_1E42996C0);
  sub_1E42038F4();
  if (v11[1] && (OUTLINED_FUNCTION_8(), v6 = (*(v5 + 824))(), , v6))
  {
    *&v12[0] = 0x2E7972617262694CLL;
    *(&v12[0] + 1) = 0xEB000000003D6469;
    sub_1E3A8CC3C(*(v6 + 32));
    MEMORY[0x1E69109E0]();

    sub_1E3C0F210(v7, 0, v11);
    type metadata accessor for Accessibility();
    sub_1E40A7DC8();

    sub_1E3C0E314(v8, v9, v10);
    sub_1E4202EA4();

    memcpy(v12, v11, 0x78uLL);
    sub_1E3C0E368(v12);
    sub_1E3743538(v2, v1, &qword_1ECF35440, &unk_1E42C3E90);
    swift_storeEnumTagMultiPayload();
    sub_1E3C0E258();
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();

    sub_1E325F69C(v2, &qword_1ECF35440);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1E3C0E258();
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0BDFC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  type metadata accessor for LibSidebarItemViewVisionOS(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF354B0, &qword_1E42C3EF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35488, &qword_1E42C3EC0);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v29 - v15;
  v17 = *v2;
  v18 = (*(**v2 + 288))(v14);
  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = v18;
  if (!sub_1E32AE9B0(v18))
  {

LABEL_5:

    sub_1E3DC4260(v26, v8);
    sub_1E3C0E98C(v8, v0);
    swift_storeEnumTagMultiPayload();
    sub_1E3C0E6DC();
    OUTLINED_FUNCTION_4_147();
    sub_1E3C0E828(v27, v28, &unk_1E42D2568);
    OUTLINED_FUNCTION_12_12();
    sub_1E4201F44();
    sub_1E3C0E9F0(v8);
    goto LABEL_6;
  }

  v29[0] = v29;
  v20 = *(v17 + 48);
  v29[2] = *(v17 + 40);
  v29[3] = v20;
  MEMORY[0x1EEE9AC00](v20);
  v29[-2] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35498, &unk_1E42C3EC8);
  v21 = sub_1E3C0E774();
  v29[1] = v4;
  sub_1E32822E0(v21, v22, v23);
  sub_1E4203B84();

  (*(v12 + 16))(v0, v16, v10);
  swift_storeEnumTagMultiPayload();
  sub_1E3C0E6DC();
  OUTLINED_FUNCTION_4_147();
  sub_1E3C0E828(v24, v25, &unk_1E42D2568);
  OUTLINED_FUNCTION_12_12();
  sub_1E4201F44();
  (*(v12 + 8))(v16, v10);
LABEL_6:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0C124(uint64_t a1@<X8>)
{

  sub_1E3DC4260(v2, a1);
}

void sub_1E3C0C160()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E41A3110();
  (*(v4 + 16))(v8, v9, v2);
  sub_1E3C0D764(v1, &v31);
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  sub_1E3B4F8E0(v1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136315138;
    OUTLINED_FUNCTION_37_43();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0, &qword_1E42996C0);
    sub_1E42038F4();
    OUTLINED_FUNCTION_19_80();
    v18 = v17 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
    if (v13)
    {
      v19 = v18;
    }

    else
    {
      v19 = v14;
    }

    if (v13)
    {
      v20 = v16;
    }

    else
    {
      v20 = v15;
    }

    v21 = sub_1E3270FC8(v19, v20, &v27);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_1E323F000, v10, v11, "LibSidebarViewVisionOS:: on Appear: selectedMenuId %s", v12, 0xCu);
    OUTLINED_FUNCTION_5_21();
    MEMORY[0x1E69143B0](v12, -1, -1);
  }

  v22 = (*(v4 + 8))(v8, v2);
  v23 = *(v1 + 8);
  v24 = (*(*v23 + 408))(v22);
  if (v24)
  {
    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  OUTLINED_FUNCTION_37_43();
  v29 = *(v1 + 16);
  v30 = *(v1 + 32);
  v27 = v26;
  v28 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0, &qword_1E42996C0);
  sub_1E4203904();
  v29 = v31;
  v30 = v32;
  sub_1E42038F4();
  (*(*v23 + 832))(v27, v28);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0C43C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v3 = *(v1 + 8);
  v4 = (*(*v3 + 408))();
  if (v4)
  {
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v28 = *(v1 + 16);
  v29 = *(v1 + 32);
  v24 = *(v1 + 16);
  v25 = *(v1 + 32);
  v26 = v6;
  v27 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0, &qword_1E42996C0);
  sub_1E4203904();
  OUTLINED_FUNCTION_11_101();
  sub_1E42038F4();
  (*(*v3 + 832))(v6, v5);

  sub_1E41A3110();
  v7 = OUTLINED_FUNCTION_18_61();
  v8(v7);
  sub_1E3C0D764(v1, &v24);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  sub_1E3B4F8E0(v1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136315138;
    OUTLINED_FUNCTION_11_101();
    sub_1E42038F4();
    OUTLINED_FUNCTION_19_80();
    v17 = v16 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
    if (v12)
    {
      v18 = v17;
    }

    else
    {
      v18 = v13;
    }

    if (v12)
    {
      v19 = v15;
    }

    else
    {
      v19 = v14;
    }

    v20 = sub_1E3270FC8(v18, v19, &v23);

    *(v11 + 4) = v20;
    _os_log_impl(&dword_1E323F000, v9, v10, "LibSidebarViewVisionOS:: onChange libSource, reset selectedMenuId %s", v11, 0xCu);
    OUTLINED_FUNCTION_5_21();
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  v21 = OUTLINED_FUNCTION_13_8();
  v22(v21);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0C6F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  if (*v3)
  {
    v5 = *(*v3 + 16);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v28 = *(v1 + 16);
  v29 = *(v1 + 32);
  v24 = *(v1 + 16);
  v25 = *(v1 + 32);
  v26 = v5;
  v27 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0, &qword_1E42996C0);
  sub_1E4203904();
  sub_1E41A3110();
  v7 = OUTLINED_FUNCTION_18_61();
  v8(v7);
  sub_1E3C0D764(v1, &v24);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  sub_1E3B4F8E0(v1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136315138;
    OUTLINED_FUNCTION_11_101();
    sub_1E42038F4();
    OUTLINED_FUNCTION_19_80();
    v17 = v16 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
    if (v12)
    {
      v18 = v17;
    }

    else
    {
      v18 = v13;
    }

    if (v12)
    {
      v19 = v15;
    }

    else
    {
      v19 = v14;
    }

    v20 = sub_1E3270FC8(v18, v19, &v23);

    *(v11 + 4) = v20;
    _os_log_impl(&dword_1E323F000, v9, v10, "LibSidebarViewVisionOS:: onChange selectedMenuItem, new selectedMenuId %s", v11, 0xCu);
    OUTLINED_FUNCTION_5_21();
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  v21 = OUTLINED_FUNCTION_13_8();
  v22(v21);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0C950()
{
  OUTLINED_FUNCTION_31_1();
  v26 = v0;
  v27 = v1;
  v3 = v2;
  v29 = v4;
  v5 = sub_1E4201AE4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35318, &qword_1E42C3DD0);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  (*(v7 + 104))(v11, *MEMORY[0x1E697C428], v5, v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35320, &qword_1E42C3DD8);
  OUTLINED_FUNCTION_1_11();
  v21 = sub_1E374AD40(v19, &qword_1ECF35320, &qword_1E42C3DD8, v20);
  sub_1E42033D4();
  (*(v7 + 8))(v11, v5);
  v30 = v3;
  v31 = v26;
  v32 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35330, &qword_1E42C3DE0);
  v33 = v18;
  v34 = v21;
  OUTLINED_FUNCTION_7_18();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_13_105();
  sub_1E374AD40(v22, v23, &qword_1E42C3DE0, v24);
  v25 = v28;
  sub_1E4203504();
  (*(v13 + 8))(v17, v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0CB9C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v38 = v4;
  v39 = v2;
  v5 = v4;
  v46 = v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35340, &qword_1E42C3DE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v43 = v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35348, &qword_1E42C3DF0);
  OUTLINED_FUNCTION_0_10();
  v42 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v41 = v11;
  v12 = sub_1E4202034();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35350, &qword_1E42C3DF8);
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  v24 = sub_1E3BF7A38();
  v25 = *(v14 + 16);
  v25(v18, v24, v12);
  v50 = v5;
  v51 = v3;
  v52 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35358, &qword_1E42C3E00);
  sub_1E374AD40(&qword_1ECF35360, &qword_1ECF35358, &qword_1E42C3E00, MEMORY[0x1E6981870]);
  sub_1E4200C04();
  v26 = sub_1E3BF7AD8();
  v27 = (v25)(v18, v26, v12);
  v47 = v38;
  v48 = v39;
  v49 = v1;
  sub_1E3C0D91C(v27, v28, v29);
  v30 = v41;
  sub_1E4200C04();
  v31 = *(v45 + 48);
  v32 = v43;
  v33 = v40;
  (*(v20 + 16))(v43, v23, v40);
  v34 = v42;
  v35 = v32 + v31;
  v36 = v44;
  (*(v42 + 16))(v35, v30, v44);
  sub_1E4201E04();
  (*(v34 + 8))(v30, v36);
  (*(v20 + 8))(v23, v33);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0CF0C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35378, &qword_1E42C3E10);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v65 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v65 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v65 - v19;
  v21 = [objc_opt_self() sharedInstance];
  if (!v21)
  {
    __break(1u);
    goto LABEL_9;
  }

  v22 = v21;
  v66 = v3;
  v67 = v1;
  v72 = v8;
  v73 = v20;
  v68 = v17;
  v69 = v14;
  v70 = v11;
  v71 = v5;
  v23 = sub_1E3741090(0x5952415242494CLL, 0xE700000000000000, v21);
  v25 = v24;

  if (!v25)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v74 = v23;
  v75 = v25;
  v65[1] = sub_1E32822E0(v26, v27, v28);
  v29 = sub_1E4202C44();
  v31 = v30;
  v33 = v32;
  sub_1E42029E4();
  v34 = sub_1E4202C04();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_1E37434B8(v29, v31, v33 & 1);

  v74 = v34;
  v75 = v36;
  v76 = v38 & 1;
  v77 = v40;
  v41 = *sub_1E3E5FD88();
  sub_1E39B9138();

  sub_1E37434B8(v34, v36, v38 & 1);

  v42 = v66;
  if (!v67)
  {
    v42 = 0;
  }

  v43 = 0xE000000000000000;
  if (v67)
  {
    v43 = v67;
  }

  v74 = v42;
  v75 = v43;

  sub_1E4202C44();
  sub_1E4202854();
  OUTLINED_FUNCTION_82();
  v44 = sub_1E4202C04();
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v51 = OUTLINED_FUNCTION_57();
  sub_1E37434B8(v51, v52, v53);

  v74 = v44;
  v75 = v46;
  v54 = v48 & 1;
  v76 = v48 & 1;
  v77 = v50;
  v55 = *sub_1E3E60364();
  v56 = v68;
  sub_1E39B9138();

  sub_1E37434B8(v44, v46, v54);

  v57 = v72;
  v58 = v73;
  v59 = *(v72 + 16);
  v60 = v69;
  v59(v69, v73, v6);
  v61 = v70;
  v59(v70, v56, v6);
  v62 = v71;
  v59(v71, v60, v6);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35380, &qword_1E42C3E18);
  v59(&v62[*(v63 + 48)], v61, v6);
  v64 = *(v57 + 8);
  v64(v56, v6);
  v64(v58, v6);
  v64(v61, v6);
  v64(v60, v6);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3C0D33C()
{
  result = qword_1ECF352D8;
  if (!qword_1ECF352D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF352B0, &qword_1E42C3C60);
    sub_1E3C0D488();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF352F0, &qword_1E42C3C78);
    sub_1E42026A4();
    sub_1E374AD40(&qword_1ECF352F8, &qword_1ECF352F0, &qword_1E42C3C78, MEMORY[0x1E697C598]);
    sub_1E3C0E828(&qword_1ECF352D0, MEMORY[0x1E697CC38], MEMORY[0x1E697CC30]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF352D8);
  }

  return result;
}

unint64_t sub_1E3C0D488()
{
  result = qword_1ECF352E0;
  if (!qword_1ECF352E0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF352B8, &qword_1E42C3C68);
    sub_1E3C0D540(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF352E0);
  }

  return result;
}

unint64_t sub_1E3C0D540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF352E8;
  if (!qword_1ECF352E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF352E8);
  }

  return result;
}

unint64_t sub_1E3C0D594()
{
  result = qword_1ECF35300;
  if (!qword_1ECF35300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35290, &qword_1E42C3C40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF352C0, &qword_1E42C3C70);
    sub_1E42026A4();
    sub_1E374AD40(&qword_1ECF352C8, &qword_1ECF352C0, &qword_1E42C3C70, MEMORY[0x1E697C598]);
    sub_1E3C0E828(&qword_1ECF352D0, MEMORY[0x1E697CC38], MEMORY[0x1E697CC30]);
    swift_getOpaqueTypeConformance2();
    sub_1E3C0E828(&qword_1EE288768, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35300);
  }

  return result;
}

unint64_t sub_1E3C0D7C0()
{
  result = qword_1ECF35308;
  if (!qword_1ECF35308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35310, &qword_1E42C3D28);
    sub_1E3C0D33C();
    sub_1E3C0D594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35308);
  }

  return result;
}

void sub_1E3C0D87C(uint64_t a1@<X8>)
{
  *a1 = sub_1E4201D54();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35370, &qword_1E42C3E08);
  sub_1E3C0CF0C();
}

uint64_t sub_1E3C0D8E0@<X0>(uint64_t a1@<X8>)
{

  result = sub_1E3F18F50(v2);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

unint64_t sub_1E3C0D91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35368;
  if (!qword_1ECF35368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35368);
  }

  return result;
}

uint64_t sub_1E3C0D970@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1E4202AE4();
  v4 = sub_1E3C0B7FC();
  v6 = v5;
  v7 = *(v3 + 8);
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35388, &qword_1E42C3E20) + 36));
  *v8 = v4;
  v8[1] = v6;
  v8[2] = v7;
}

uint64_t sub_1E3C0DA10@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v4 = v3[1];
  OUTLINED_FUNCTION_8();
  v11 = (*(v5 + 312))(v6, v7, v8, v9, v10);
  v12 = v11;
  v17 = (*(*v4 + 872))(v11, v13, v14, v15, v16);
  sub_1E414B880(v20, 0, v12 & 1, v17 & 1, a1);
  OUTLINED_FUNCTION_17_6();
  v18 = swift_allocObject();
  memcpy((v18 + 16), v3, 0x48uLL);
  a1[11] = sub_1E3C0DCB4;
  a1[12] = v18;
  a1[13] = 0;
  a1[14] = 0;
  return sub_1E3C0D764(v3, v20);
}

unint64_t sub_1E3C0DB1C()
{
  result = qword_1ECF35398;
  if (!qword_1ECF35398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35388, &qword_1E42C3E20);
    v3 = sub_1E374AD40(&qword_1ECF353A0, &unk_1ECF353A8, &unk_1E42C3E30, MEMORY[0x1E697CD20]);
    sub_1E3C0DBD4(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35398);
  }

  return result;
}

unint64_t sub_1E3C0DBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE295700[0];
  if (!qword_1EE295700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE295700);
  }

  return result;
}

unint64_t sub_1E3C0DC28()
{
  result = qword_1ECF353B0;
  if (!qword_1ECF353B0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35390, &qword_1E42C3E28);
    sub_1E3C0D540(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF353B0);
  }

  return result;
}

void sub_1E3C0DCB8()
{
  v0 = objc_opt_self();
  v1 = sub_1E4205ED4();
  v3 = [v0 createWithPageType_];

  v2 = [objc_opt_self() sharedInstance];
  [v2 recordPage_];
}

unint64_t sub_1E3C0DD78()
{
  result = qword_1ECF353D0;
  if (!qword_1ECF353D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF353C8, &qword_1E42C3E48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF353D8, &unk_1E42C3E50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34178, &qword_1E42E02E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF353E0, &unk_1E42C3E60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C60, &qword_1E42BD0B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF353E8, &qword_1E42C3E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D960, &unk_1E4298000);
    sub_1E3C0DF80();
    sub_1E3C0E09C();
    swift_getOpaqueTypeConformance2();
    sub_1E3C0E118(&qword_1ECF35408, &qword_1ECF33C60);
    swift_getOpaqueTypeConformance2();
    sub_1E3C0E118(&qword_1ECF35410, &qword_1ECF34178);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E3C0DBD4(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF353D0);
  }

  return result;
}

unint64_t sub_1E3C0DF80()
{
  result = qword_1ECF353F0;
  if (!qword_1ECF353F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF353E8, &qword_1E42C3E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF353F8, &qword_1E42C3E78);
    sub_1E4201574();
    sub_1E374AD40(&qword_1ECF35400, &qword_1ECF353F8, &qword_1E42C3E78, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF353F0);
  }

  return result;
}

unint64_t sub_1E3C0E09C()
{
  result = qword_1EE23B5E8;
  if (!qword_1EE23B5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D960, &unk_1E4298000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B5E8);
  }

  return result;
}

uint64_t sub_1E3C0E118(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    sub_1E3C0E828(&qword_1EE286128, type metadata accessor for LibMenuItem, &unk_1E42B6B00);
    OUTLINED_FUNCTION_57();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3C0E1CC()
{
  result = qword_1ECF35430;
  if (!qword_1ECF35430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35428, &qword_1E42C3E88);
    sub_1E3C0E258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35430);
  }

  return result;
}

unint64_t sub_1E3C0E258()
{
  result = qword_1ECF35438;
  if (!qword_1ECF35438)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35440, &unk_1E42C3E90);
    sub_1E3C0E314(v1, v2, v3);
    sub_1E3C0E828(&qword_1EE288768, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35438);
  }

  return result;
}

unint64_t sub_1E3C0E314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35448;
  if (!qword_1ECF35448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35448);
  }

  return result;
}

void sub_1E3C0E3BC(double a1)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v4 = *(*v2 + 256);

    v4(*&a1, 0);
  }

  else
  {
    type metadata accessor for AppEnvironment(0);
    OUTLINED_FUNCTION_5_137();
    sub_1E3C0E828(v5, v6, &unk_1E42BD340);
    sub_1E4201744();
    __break(1u);
  }
}

uint64_t sub_1E3C0E48C()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 456))();
  swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35478, &qword_1E42C3EB8);
  OUTLINED_FUNCTION_14_11();
  sub_1E374AD40(v3, &qword_1ECF33C60, &qword_1E42BD0B0, v4);
  sub_1E3C0E620();
  return sub_1E4203B34();
}

unint64_t sub_1E3C0E59C()
{
  result = qword_1ECF35468;
  if (!qword_1ECF35468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35460, &qword_1E42C3EB0);
    sub_1E3C0E620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35468);
  }

  return result;
}

unint64_t sub_1E3C0E620()
{
  result = qword_1ECF35470;
  if (!qword_1ECF35470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35478, &qword_1E42C3EB8);
    sub_1E3C0E6DC();
    sub_1E3C0E828(&qword_1ECF354A0, type metadata accessor for LibSidebarItemViewVisionOS, &unk_1E42D2568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35470);
  }

  return result;
}

unint64_t sub_1E3C0E6DC()
{
  result = qword_1ECF35480;
  if (!qword_1ECF35480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35488, &qword_1E42C3EC0);
    sub_1E3C0E774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35480);
  }

  return result;
}

unint64_t sub_1E3C0E774()
{
  result = qword_1ECF35490;
  if (!qword_1ECF35490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35498, &unk_1E42C3EC8);
    sub_1E3C0E828(&qword_1ECF354A0, type metadata accessor for LibSidebarItemViewVisionOS, &unk_1E42D2568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35490);
  }

  return result;
}

uint64_t sub_1E3C0E828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3C0E878()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0, &qword_1E42996C0);
  sub_1E42038F4();
  (*(*v1 + 832))();
}

uint64_t objectdestroyTm_29()
{

  OUTLINED_FUNCTION_17_6();

  return swift_deallocObject();
}

uint64_t sub_1E3C0E98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibSidebarItemViewVisionOS(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3C0E9F0(uint64_t a1)
{
  v2 = type metadata accessor for LibSidebarItemViewVisionOS(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3C0EA4C()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C60, &qword_1E42BD0B0);
  type metadata accessor for LibSidebarItemViewVisionOS(0);
  OUTLINED_FUNCTION_14_11();
  sub_1E374AD40(v0, &qword_1ECF33C60, &qword_1E42BD0B0, v1);
  OUTLINED_FUNCTION_4_147();
  sub_1E3C0E828(v2, v3, &unk_1E42D2568);
  return sub_1E4203B34();
}

uint64_t sub_1E3C0EB54()
{
  result = sub_1E4205ED4();
  qword_1EE2AA8D8 = result;
  return result;
}

uint64_t *sub_1E3C0EB8C()
{
  if (qword_1EE291A90 != -1)
  {
    OUTLINED_FUNCTION_1_175(&qword_1EE291A90);
  }

  return &qword_1EE2AA8D8;
}

void sub_1E3C0EC00(unsigned __int8 *a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = sub_1E324FBDC();
  (*(v4 + 16))(v7, v9, v2);
  v10 = sub_1E41FFC94();
  v11 = sub_1E42067E4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1E323F000, v10, v11, "isEligible for group session %{BOOL}d", v12, 8u);
    MEMORY[0x1E69143B0](v12, -1, -1);
  }

  (*(v4 + 8))(v7, v2);
  v13 = [objc_opt_self() defaultCenter];
  if (qword_1EE291A90 != -1)
  {
    OUTLINED_FUNCTION_1_175(&qword_1EE291A90);
  }

  v14 = qword_1EE2AA8D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v17[1] = 0x626967696C457369;
  v17[2] = 0xEA0000000000656CLL;
  sub_1E4207414();
  *(inited + 96) = MEMORY[0x1E69E6370];
  *(inited + 72) = v8;
  v16 = sub_1E4205CB4();
  sub_1E37E7460(v14, 0, v16, v13);
}

double sub_1E3C0EE60()
{
  if (*(v0 + 24))
  {

    sub_1E42004E4();
  }

  *(v0 + 24) = 0;

  return result;
}

uint64_t sub_1E3C0EEBC()
{

  return v0;
}

uint64_t sub_1E3C0EEE4()
{
  sub_1E3C0EEBC();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E3C0EF18(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E41FF2D4();
  sub_1E32ADEC0(&qword_1ECF354C0, MEMORY[0x1E696B210], MEMORY[0x1E696B208]);
  sub_1E4200BC4();
  v3 = sub_1E41FF2A4();

  return v3 & 1;
}

uint64_t sub_1E3C0EFD8()
{
  if (qword_1EE291A88 != -1)
  {
    OUTLINED_FUNCTION_0_181(&qword_1EE291A88);
  }
}

uint64_t sub_1E3C0F06C()
{
  v1 = OBJC_IVAR____TtC8VideosUIP33_46B8EF72354391877DF35743E40A3A1131LibSideBarDetailsViewInteractor_showcaseValue;
  type metadata accessor for ShowcaseValue(0);
  *(v0 + v1) = sub_1E40AAAB8();
  v2 = OBJC_IVAR____TtC8VideosUIP33_46B8EF72354391877DF35743E40A3A1131LibSideBarDetailsViewInteractor_viewMetricsRecorder;
  type metadata accessor for ViewMetricsRecorder();
  *(v0 + v2) = sub_1E3FEFA68();
  v3 = OBJC_IVAR____TtC8VideosUIP33_46B8EF72354391877DF35743E40A3A1131LibSideBarDetailsViewInteractor_navBarObservableModel;
  type metadata accessor for NavigationBarObservableModel(0);
  *(v0 + v3) = sub_1E39EE6D8();

  return sub_1E3B500B4();
}

double sub_1E3C0F0F4()
{

  return result;
}

uint64_t sub_1E3C0F148()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3C0F1D8()
{
  type metadata accessor for LibSideBarDetailsViewInteractor(0);
  swift_allocObject();
  return sub_1E3C0F06C();
}

void sub_1E3C0F210(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_2_142();
  sub_1E3C115D8(v6, v7);
  OUTLINED_FUNCTION_20_2();
  v8 = sub_1E4201754();
  v25 = v9;
  v26 = v8;
  type metadata accessor for AppEnvironment(0);
  sub_1E3C115D8(&qword_1EE283350, type metadata accessor for AppEnvironment);
  OUTLINED_FUNCTION_20_2();
  v10 = sub_1E4201754();
  v23 = v11;
  v24 = v10;
  type metadata accessor for TemplateViewModel(0);
  sub_1E410D4C8(15, MEMORY[0x1E69E7CC8], 0);
  v13 = v12;
  type metadata accessor for LibMenuItem(0);
  OUTLINED_FUNCTION_0_182();
  sub_1E3C115D8(v14, v15);

  v16 = sub_1E42010C4();
  v18 = v17;
  if (a2)
  {
    v19 = sub_1E38074D0;
  }

  else
  {
    v19 = sub_1E3C0F458;
  }

  sub_1E3B7B1C8();
  OUTLINED_FUNCTION_6_17();
  v21 = *(v20 + 216);

  LOBYTE(v21) = v21(v22);

  sub_1E3C0F4A4(a1, v21 & 1);
  sub_1E42038E4();

  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v26;
  *(a3 + 24) = v25;
  *(a3 + 32) = v24;
  *(a3 + 40) = v23;
  *(a3 + 48) = v19;
  *(a3 + 56) = a2;
  *(a3 + 64) = 0;
  *(a3 + 72) = sub_1E3C0F1D8;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = v13;
  *(a3 + 104) = v27;
  *(a3 + 112) = v28;
}

uint64_t sub_1E3C0F458()
{
  type metadata accessor for Route(0);
  v0 = j__OUTLINED_FUNCTION_18();
  return sub_1E3F4C85C(0xD000000000000011, 0x80000001E4276740, v0 & 1);
}

uint64_t sub_1E3C0F4A4(uint64_t a1, char a2)
{
  v4 = sub_1E3B7B1C8();
  OUTLINED_FUNCTION_6_17();
  v6 = *(v5 + 848);

  LOBYTE(v6) = v6(v7);

  if ((v6 & 1) == 0)
  {
    v8 = *(**v4 + 816);

    v9 = v8(a1);

    (*(*a1 + 312))(v10);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158, &qword_1E42A8F28);
    OUTLINED_FUNCTION_11_102(&qword_1EE23B5A0, &qword_1ECF2CFF8, &qword_1E42A8D60);
    v12 = sub_1E4149048(v11);

    if (v12)
    {
      a2 = (*(*a1 + 256))(v13) & v9;
    }

    else
    {
      a2 = 0;
    }
  }

  return a2 & 1;
}

uint64_t sub_1E3C0F648@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1E3C0F730(a1);
  sub_1E3B7B1C8();
  OUTLINED_FUNCTION_6_17();
  v5 = *(v4 + 240);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF354C8, &qword_1E42C4018);

  v5(v7);

  OUTLINED_FUNCTION_13_6();
  v8 = swift_allocObject();
  memcpy((v8 + 16), v2, 0x78uLL);
  v9 = (a1 + *(v6 + 56));
  *v9 = sub_1E3C102F4;
  v9[1] = v8;
  return sub_1E3C10358(v2, v11);
}

uint64_t sub_1E3C0F730@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v114 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF354D8, &qword_1E42C41A8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v107[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF354E0, &qword_1E42C41B0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v107[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF354E8, &qword_1E42C41B8) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v107[-v12];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF354F0, &qword_1E42C41C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v107[-v15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF354F8, &qword_1E42C41C8);
  OUTLINED_FUNCTION_0_10();
  v117 = v18;
  v118 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v107[-v20];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35500, &qword_1E42C41D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v107[-v23];
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35508, &qword_1E42C41D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v120 = &v107[-v25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35510, &qword_1E42C41E0);
  OUTLINED_FUNCTION_0_10();
  v112 = v27;
  v113 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v111 = &v107[-v29];
  *v5 = sub_1E4201D44();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35518, &qword_1E42C41E8);
  sub_1E3C103AC(&v5[*(v30 + 44)]);
  sub_1E4203DA4();
  sub_1E42015C4();
  sub_1E3C111EC(v5, v9, &qword_1ECF354D8, &qword_1E42C41A8);
  memcpy(&v9[*(v6 + 44)], v124, 0x70uLL);
  OUTLINED_FUNCTION_13_6();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_12_93(v31);
  sub_1E3C111EC(v9, v13, &qword_1ECF354E0, &qword_1E42C41B0);
  v32 = *(v10 + 44);
  v33 = v21;
  v34 = &v13[v32];
  *v34 = sub_1E3C10DC4;
  v34[1] = v5;
  v34[2] = 0;
  v34[3] = 0;
  OUTLINED_FUNCTION_13_6();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_12_93(v35);
  sub_1E3C111EC(v13, v16, &qword_1ECF354E8, &qword_1E42C41B8);
  v36 = v115;
  v37 = &v16[*(v115 + 36)];
  *v37 = 0;
  v37[1] = 0;
  v37[2] = sub_1E3C10F4C;
  v37[3] = v5;
  OUTLINED_FUNCTION_13_6();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_12_93(v38);
  OUTLINED_FUNCTION_18_72();
  OUTLINED_FUNCTION_18_72();
  OUTLINED_FUNCTION_18_72();
  sub_1E3C110B4(&qword_1ECF35520, &qword_1ECF354F0, &qword_1E42C41C0, sub_1E3C11084);
  sub_1E383B5A4(sub_1E3C10F98, v5, v36);

  sub_1E325F69C(v16, &qword_1ECF354F0);
  v39 = *(v2 + 16);
  if (!v39)
  {
    goto LABEL_14;
  }

  type metadata accessor for Route(0);
  OUTLINED_FUNCTION_4_148();
  sub_1E3C115D8(v40, v41);
  v42 = v39;
  v43 = sub_1E4200BC4();
  type metadata accessor for LibSideBarDetailsViewInteractor(0);
  OUTLINED_FUNCTION_1_176();
  sub_1E3C115D8(v44, v45);
  sub_1E4200BC4();

  v46 = sub_1E379D97C(v42, v43);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v119;
  (*(v117 + 32))(v119, v33, v118);
  v54 = &v53[*(v116 + 36)];
  *v54 = v46;
  v54[1] = v48;
  v54[2] = v50;
  v54[3] = v52;
  v55 = sub_1E4203DA4();
  v57 = v56;
  v58 = &v120[*(v121 + 36)];
  *v58 = sub_1E4203DA4();
  *(v58 + 1) = v59;
  v60 = objc_opt_self();
  v61 = [v60 sharedInstance];
  if (!v61)
  {
    __break(1u);
    goto LABEL_13;
  }

  v62 = v61;
  v117 = v57;
  v118 = v55;
  v63 = sub_1E3741090(0xD000000000000015, 0x80000001E4267120, v61);
  v65 = v64;

  v66 = [v60 sharedInstance];
  if (!v66)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    type metadata accessor for Router(0);
    OUTLINED_FUNCTION_2_142();
    sub_1E3C115D8(v105, v106);
    result = sub_1E4201744();
    __break(1u);
    return result;
  }

  v67 = v66;
  v68 = sub_1E3741090(0xD000000000000017, 0x80000001E4267100, v66);
  v70 = v69;

  sub_1E39FA1A8(v63, v65, v68, v70, v127);
  v71 = v127[0];
  v109 = v127[1];
  v115 = v127[3];
  v116 = v127[2];
  v110 = v128;
  *v122 = *(v2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E42038F4();
  v108 = LOBYTE(v125[0]);
  memset(v122, 0, 40);
  v72 = *(v2 + 8);
  v73 = v72[32];
  sub_1E3B7B1C8();
  OUTLINED_FUNCTION_36();
  v75 = *(v74 + 312);

  LOBYTE(v68) = v75(v76);

  OUTLINED_FUNCTION_36();
  v78 = *(v77 + 872);

  v80 = v78(v79);

  sub_1E414B880(v122, v73, v68 & 1, v80 & 1, __src);
  *v122 = *(v2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  v81 = sub_1E42038F4();
  v82 = 0.0;
  v83 = 0.0;
  if ((v125[0] & 1) == 0)
  {
    *v122 = (*(*v72 + 312))(v81);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158, &qword_1E42A8F28);
    OUTLINED_FUNCTION_11_102(&qword_1EE23B5A0, &qword_1ECF2CFF8, &qword_1E42A8D60);
    v85 = sub_1E4149048(v84);

    if (v85)
    {
      if ((*(*v72 + 256))(v86))
      {
        v83 = 0.0;
      }

      else
      {
        v83 = 1.0;
      }
    }
  }

  if (v108)
  {
    v82 = 1.0;
  }

  memcpy(v122, __src, sizeof(v122));
  v123 = v83;
  sub_1E3C1161C(v122, v125);
  v87 = v109;
  *(v58 + 2) = v71;
  *(v58 + 3) = v87;
  v89 = v115;
  v88 = v116;
  *(v58 + 4) = v116;
  *(v58 + 5) = v89;
  v58[48] = v110;
  *(v58 + 7) = v82;
  sub_1E3C1161C(v125, (v58 + 64));

  sub_1E380E99C();
  sub_1E325F69C(v122, &qword_1ECF31798);
  sub_1E325F69C(v125, &qword_1ECF31798);

  sub_1E3264CE0(v88, v89);
  v90 = v117;
  *(v58 + 20) = v118;
  *(v58 + 21) = v90;
  v91 = v120;
  sub_1E3C111EC(v119, v120, &qword_1ECF35500, &qword_1E42C41D0);
  v92 = *(v2 + 8);
  v93 = v92[6];
  *v122 = v92[5];
  *&v122[8] = v93;
  v94 = sub_1E3C11248();
  v97 = sub_1E32822E0(v94, v95, v96);
  v98 = MEMORY[0x1E69E6158];
  v99 = v111;
  v100 = v121;
  sub_1E4203034();
  v101 = sub_1E325F69C(v91, &qword_1ECF35508);
  v125[0] = (*(*v92 + 312))(v101);
  OUTLINED_FUNCTION_13_6();
  v102 = swift_allocObject();
  memcpy((v102 + 16), v2, 0x78uLL);
  OUTLINED_FUNCTION_18_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158, &qword_1E42A8F28);
  *v122 = v100;
  *&v122[8] = v98;
  *&v122[16] = v94;
  *&v122[24] = v97;
  swift_getOpaqueTypeConformance2();
  sub_1E3A74C04();
  v103 = v113;
  sub_1E4203534();

  return (*(v112 + 8))(v99, v103);
}

double sub_1E3C102F4(char *a1)
{
  sub_1E3C0F4A4(*(v1 + 24), *a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E4203904();
  return result;
}

uint64_t sub_1E3C103AC@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317A8, &qword_1E42EBDF0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35570, &unk_1E42C4200);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = sub_1E3C1071C();
  if (v11)
  {
    v37 = v11;
    v12 = sub_1E3AC5818();
    v13 = v12[1];
    v36 = *v12;
    v35 = *(v12 + 16);
    v30 = v12[3];
    v31 = v13;
    type metadata accessor for LibSideBarDetailsViewInteractor(0);
    v38 = v1;
    OUTLINED_FUNCTION_1_176();
    sub_1E3C115D8(v14, v15);
    v32 = v6;

    v16 = OUTLINED_FUNCTION_9_102();
    v33 = v3;
    v34 = v7;
    v17 = *(v16 + OBJC_IVAR____TtC8VideosUIP33_46B8EF72354391877DF35743E40A3A1131LibSideBarDetailsViewInteractor_showcaseValue);

    v18 = *(OUTLINED_FUNCTION_9_102() + OBJC_IVAR____TtC8VideosUIP33_46B8EF72354391877DF35743E40A3A1131LibSideBarDetailsViewInteractor_navBarObservableModel);

    v19 = *(OUTLINED_FUNCTION_9_102() + OBJC_IVAR____TtC8VideosUIP33_46B8EF72354391877DF35743E40A3A1131LibSideBarDetailsViewInteractor_viewMetricsRecorder);

    v20 = v32;
    sub_1E3E85A74(v37, v36, v31, v35, v30, v17, v18, v19, v32, 0);

    v21 = v33;
    v22 = v38;
    (*(v33 + 16))(v10, v20, v38);
    swift_storeEnumTagMultiPayload();
    v23 = OUTLINED_FUNCTION_32_0();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_6_123(v25);
    OUTLINED_FUNCTION_5_138(&qword_1EE288310);
    sub_1E4201F44();

    return (*(v21 + 8))(v20, v22);
  }

  else
  {
    *v10 = sub_1E4201B84();
    *(v10 + 1) = 0;
    v10[16] = 1;
    *(v10 + 3) = 0;
    v10[32] = 1;
    *(v10 + 5) = 0;
    v10[48] = 1;
    swift_storeEnumTagMultiPayload();
    v27 = OUTLINED_FUNCTION_32_0();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_6_123(v29);
    OUTLINED_FUNCTION_5_138(&qword_1EE288310);
    return sub_1E4201F44();
  }
}

uint64_t sub_1E3C1071C()
{
  v32 = *v0;
  v1 = *(&v32 + 1);
  v2 = *(*(&v32 + 1) + 32);
  v3 = *(**(&v32 + 1) + 392);

  v5 = v3(v4);
  v7 = v6;
  v8 = (*(**(&v32 + 1) + 312))();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (!sub_1E32AE9B0(v9))
  {
    sub_1E325F69C(&v32, &unk_1ECF35568);

LABEL_27:

    return 0;
  }

  v10 = *(v0 + 12);
  if (!v10)
  {
LABEL_15:
    v16 = *(*(&v32 + 1) + 72);
    v17 = *(*(&v32 + 1) + 80);
    if (v9 >> 62)
    {
      type metadata accessor for ViewModel();

      v18 = sub_1E42076C4();
    }

    else
    {

      sub_1E42079D4();
      type metadata accessor for ViewModel();
      v18 = v9;
    }

    sub_1E3B6D0F4(v16, v17, 118, v18, 0, v19);
    v21 = v20;

    if (v21)
    {
      v31[3] = type metadata accessor for LibMenuCollectionInteractorRequest();
      v31[4] = &off_1F5D5EFC0;
      v31[0] = sub_1E385A9C8(*(&v32 + 1));
      (*(*v21 + 1688))(v31);
      sub_1E3B7B1C8();
      OUTLINED_FUNCTION_36();
      v23 = *(v22 + 816);

      v24 = v23(v1);

      if (v24)
      {
        LOBYTE(v31[0]) = v2;
        sub_1E37DA4B8(v25, v26, v27);
        if ((sub_1E4205E84() & 1) == 0)
        {
          if (v7)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1E4297BE0;
            *(inited + 32) = 0xD000000000000011;
            *(inited + 40) = 0x80000001E426F010;
            *(inited + 72) = MEMORY[0x1E69E6158];
            *(inited + 48) = v5;
            *(inited + 56) = v7;
            v7 = sub_1E4205CB4();
          }

          (*(*v21 + 1328))(v7);
        }
      }

      if (v10)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1E4298880;
        *(v29 + 32) = v21;
        v30 = *(*v10 + 472);

        v30(v29);
      }

      return v10;
    }

    sub_1E325F69C(&v32, &unk_1ECF35568);
    goto LABEL_27;
  }

  v11 = *(*v10 + 464);
  v12 = swift_retain_n();
  v13 = v11(v12);
  if (!v13)
  {

    goto LABEL_15;
  }

  v14 = v13;
  result = sub_1E32AE9B0(v13);
  if (!result)
  {

    goto LABEL_15;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v14);

    sub_1E325F69C(&v32, &unk_1ECF35568);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    sub_1E325F69C(&v32, &unk_1ECF35568);

LABEL_11:

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for LibSideBarDetailsViewInteractor(uint64_t a1)
{
  result = qword_1EE292850;
  if (!qword_1EE292850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3C10D18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1E3C10D58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3C10DC4()
{
  (*(**(v0 + 24) + 440))();
  v1 = *(v0 + 32);
  if (v1)
  {
    type metadata accessor for Route(0);
    OUTLINED_FUNCTION_4_148();
    sub_1E3C115D8(v2, v3);
    v7 = v1;
    v4 = sub_1E4200BC4();
    (*((*MEMORY[0x1E69E7D40] & *v7) + 0x198))(v4);
  }

  else
  {
    type metadata accessor for Router(0);
    OUTLINED_FUNCTION_2_142();
    sub_1E3C115D8(v5, v6);
    sub_1E4201744();
    __break(1u);
  }
}

double sub_1E3C10F98(double a1)
{
  type metadata accessor for LibSideBarDetailsViewInteractor(0);
  OUTLINED_FUNCTION_1_176();
  sub_1E3C115D8(v2, v3);
  sub_1E4200BC4();

  OUTLINED_FUNCTION_36();
  (*(v4 + 296))(a1);

  return result;
}

uint64_t sub_1E3C110B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3C11134()
{
  result = qword_1ECF35530;
  if (!qword_1ECF35530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF354E0, &qword_1E42C41B0);
    sub_1E3A1558C(&qword_1ECF35538, &qword_1ECF354D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35530);
  }

  return result;
}

uint64_t sub_1E3C111EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

unint64_t sub_1E3C11248()
{
  result = qword_1ECF35548;
  if (!qword_1ECF35548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35508, &qword_1E42C41D8);
    sub_1E3C11300();
    sub_1E3A1558C(&qword_1ECF35558, &unk_1ECF35560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35548);
  }

  return result;
}

unint64_t sub_1E3C11300()
{
  result = qword_1ECF35550;
  if (!qword_1ECF35550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35500, &qword_1E42C41D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF354F0, &qword_1E42C41C0);
    sub_1E3C110B4(&qword_1ECF35520, &qword_1ECF354F0, &qword_1E42C41C0, sub_1E3C11084);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E389B90C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35550);
  }

  return result;
}

uint64_t objectdestroyTm_30()
{

  sub_1E3264CE0(*(v0 + 64), *(v0 + 72));
  sub_1E3264CE0(*(v0 + 88), *(v0 + 96));

  OUTLINED_FUNCTION_13_6();

  return swift_deallocObject();
}

double sub_1E3C11468()
{
  v1 = *(v0 + 24);
  sub_1E3B7B1C8();
  OUTLINED_FUNCTION_6_17();
  v3 = *(v2 + 216);

  LOBYTE(v3) = v3(v4);

  sub_1E3C0F4A4(v1, v3 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E4203904();
  v5 = *(v0 + 112);
  if (v5)
  {
    (*(*v5 + 472))(MEMORY[0x1E69E7CC0]);
    sub_1E3C1071C();

    type metadata accessor for TemplateViewModel(0);
    sub_1E3C115D8(&qword_1EE279848, type metadata accessor for TemplateViewModel);
    sub_1E4200514();
    sub_1E4200594();
  }

  else
  {
    sub_1E3C1071C();
  }

  return result;
}

uint64_t sub_1E3C115D8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3C1161C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31798, &unk_1E42B62F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1E3C1169C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = HIBYTE(a3);
  v5 = sub_1E3285D14();
  v6 = *((*MEMORY[0x1E69E7D40] & **v5) + 0x108);
  v7 = *v5;
  v8 = v6(a2);

  if (v8)
  {
    v9 = v3;
    switch(v3)
    {
      case 1u:
        goto LABEL_8;
      case 2u:
      case 4u:
        v9 = 0;
        goto LABEL_8;
      case 3u:
      case 5u:
        v9 = 2;
LABEL_8:
        [v8 updateAlignment_];
        break;
      default:
        return v8;
    }

    return v8;
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x1E69D37B8]);

    return [v10 init];
  }
}

unint64_t sub_1E3C117C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3C117E8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3C117E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35578;
  if (!qword_1ECF35578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35578);
  }

  return result;
}

unint64_t sub_1E3C11840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35580;
  if (!qword_1ECF35580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35580);
  }

  return result;
}

uint64_t sub_1E3C11894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E3C11AD4(a1, a2, a3);

  return sub_1E3E36D18(a1, a2, v5);
}

uint64_t sub_1E3C118E0()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C11AD4(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v3, v4, v5, v6);
}

uint64_t sub_1E3C119B4()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C117E8(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v3);
}

uint64_t sub_1E3C11A08()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C117E8(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v3);
}

void sub_1E3C11A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3C117E8(a1, a2, a3);
  sub_1E4201F04();
  __break(1u);
}

uint64_t sub_1E3C11A84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3C11AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35588;
  if (!qword_1ECF35588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35588);
  }

  return result;
}

uint64_t sub_1E3C11B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(10, a2, a3))
  {
    type metadata accessor for CollectionViewLayout();
    v4 = sub_1E3C3E3C8();
  }

  else
  {
    type metadata accessor for ViewLayout();
    v4 = sub_1E3C2F968();
  }

  v9 = v4;
  v10 = *(a1 + 98);
  if ((sub_1E373F6E0(v10, 122, v5, v6, v7, v8) & 1) == 0)
  {
    if (sub_1E373F6E0(v10, 121, v11, v12, v13, v14))
    {
      OUTLINED_FUNCTION_8();
      (*(v20 + 328))();
      if (v21)
      {
        OUTLINED_FUNCTION_8();
        (*(v22 + 336))(0x4059000000000000, 0);
      }
    }

    else if (sub_1E373F6E0(v10, 119, v16, v17, v18, v19))
    {
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      OUTLINED_FUNCTION_8();
      (*(v23 + 160))(v24);
    }
  }

  return v9;
}

void sub_1E3C11CA0(uint64_t a1)
{
  if ((*(*a1 + 968))())
  {
  }

  else
  {
    TVAppFeature.isEnabled.getter(10, v1, v2);
  }
}

void sub_1E3C11D38(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = sub_1E373F6E0(*(a1 + 98), 148, a2, a3, a4, a5);
  v8 = MEMORY[0x1E69DDCE0];
  if (v7)
  {
    type metadata accessor for EpicInlineViewModel();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = *(*v9 + 488);

      v12 = v10(v11);
      if (v12)
      {
        sub_1E373E010(138, v12, v13);
      }

      v15 = *v8;
      v14 = *(v8 + 8);
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      goto LABEL_6;
    }
  }

  type metadata accessor for CollectionViewModel();
  v18 = swift_dynamicCastClass();
  v15 = *v8;
  v14 = *(v8 + 8);
  v17 = *(v8 + 16);
  v16 = *(v8 + 24);
  if (!v18)
  {
    goto LABEL_54;
  }

  v19 = v18;
  v20 = *(*v18 + 1344);

  v22 = v20(v21);
  if (sub_1E373F6E0(v22, 150, v23, v24, v25, v26) & 1) != 0 || (sub_1E373F6E0(v22, 117, v27, v28, v29, v30))
  {
    OUTLINED_FUNCTION_8();
    v36 = *(v35 + 624);

    v38 = v36(v37);
    if (v38)
    {
      if (sub_1E373F6E0(*(v38 + 98), 148, v39, v40, v41, v42))
      {

        v45 = TVAppFeature.isEnabled.getter(10, v43, v44);

        v46 = (v45 & 1) == 0;
        v47 = 20.0;
        goto LABEL_13;
      }
    }

    v55 = v36(v38);

    if (v55)
    {
      type metadata accessor for TemplateViewModel(0);
      v56 = swift_dynamicCastClass();
      if (v56)
      {
        v58 = sub_1E39E3C28(*(v56 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType), 11, v57);

        if (v58)
        {

          v15 = 0.0;
          v17 = 0.0;
          goto LABEL_54;
        }
      }

      else
      {
      }
    }

    LOBYTE(v129) = 1;
    OUTLINED_FUNCTION_8();
    (*(v72 + 776))(&v131, &v129, &unk_1F5D5D888, &off_1F5D5C918);
    if (v134)
    {
      if (swift_dynamicCast())
      {
        v74 = v129;
        v73 = v130;
        goto LABEL_35;
      }
    }

    else
    {
      sub_1E329505C(&v131);
    }

    v74 = 0;
    v73 = 0;
LABEL_35:
    v75 = sub_1E38566B8(0);
    if (v73)
    {
      if (v74 == v75 && v73 == v76)
      {

        goto LABEL_51;
      }

      v78 = OUTLINED_FUNCTION_1_177(v75, v76, v75);

      if (v78)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

    v79 = sub_1E38566B8(1);
    if (v73)
    {
      if (v74 == v79 && v73 == v80)
      {
      }

      else
      {
        v82 = OUTLINED_FUNCTION_1_177(v79, v80, v79);

        if ((v82 & 1) == 0)
        {
LABEL_52:
          sub_1E3C11CA0(v19);
          v15 = v83;
          v14 = v84;
          v16 = v85;
LABEL_53:

          v17 = 18.0;
          goto LABEL_54;
        }
      }

      if ([objc_opt_self() isVision])
      {
        sub_1E3C11CA0(v19);
        v14 = v86;
        v16 = v87;

        v17 = 18.0;
        v15 = 12.0;
        goto LABEL_54;
      }

      goto LABEL_52;
    }

LABEL_51:

    goto LABEL_52;
  }

  if (sub_1E373F6E0(v22, 127, v31, v32, v33, v34))
  {
    OUTLINED_FUNCTION_2_143(&unk_1F5D5D888, v128, v129, v130, v131, v132, v133, v134, v135);
    v52 = __swift_destroy_boxed_opaque_existential_1(&v131);
    if ((*(*v19 + 968))(v52))
    {

      v15 = 0.0;
    }

    else if (TVAppFeature.isEnabled.getter(10, v53, v54))
    {
      v15 = 18.0;
    }

    else
    {
      v15 = 20.0;
    }

    goto LABEL_53;
  }

  if (sub_1E373F6E0(v22, 126, v48, v49, v50, v51))
  {
    goto LABEL_6;
  }

  if (sub_1E373F6E0(v22, 128, v59, v60, v61, v62))
  {
    v67 = OUTLINED_FUNCTION_2_143(&unk_1F5D5D888, v128, v129, v130, v131, v132, v133, v134, v135);
    __swift_destroy_boxed_opaque_existential_1(&v131);
    v70 = TVAppFeature.isEnabled.getter(10, v68, v69);
    v71 = (*(*v19 + 968))();
    if (v70)
    {
      if (v71)
      {

        v15 = 0.0;
        v17 = 18.0;
      }

      else
      {
        v17 = 18.0;
        if (v67)
        {
          v15 = 48.0;
        }

        else
        {
          v15 = 18.0;
        }
      }
    }

    else if (v71)
    {

      v17 = 0.0;
      v15 = 0.0;
    }

    else
    {
      v15 = 24.0;
      v17 = 0.0;
    }

    goto LABEL_6;
  }

  if (sub_1E373F6E0(v22, 118, v63, v64, v65, v66) & 1) != 0 || (sub_1E373F6E0(v22, 122, v88, v89, v90, v91))
  {
    goto LABEL_52;
  }

  if (sub_1E373F6E0(v22, 119, v92, v93, v94, v95) & 1) != 0 || (sub_1E373F6E0(v22, 120, v96, v97, v98, v99))
  {
    goto LABEL_6;
  }

  if (sub_1E373F6E0(v22, 129, v100, v101, v102, v103))
  {
    goto LABEL_52;
  }

  if (sub_1E373F6E0(v22, 121, v104, v105, v106, v107))
  {
    v113 = TVAppFeature.isEnabled.getter(10, v108, v109);

    v46 = (v113 & 1) == 0;
    v47 = 0.0;
LABEL_13:
    if (v46)
    {
      v17 = v47;
    }

    else
    {
      v17 = 18.0;
    }

    goto LABEL_54;
  }

  if (sub_1E373F6E0(v22, 123, v109, v110, v111, v112))
  {
LABEL_6:

    goto LABEL_54;
  }

  if (sub_1E373F6E0(v22, 133, v114, v115, v116, v117) & 1) != 0 || (sub_1E373F6E0(v22, 132, v118, v119, v120, v121) & 1) != 0 || (sub_1E373F6E0(v22, 134, v122, v123, v124, v125))
  {

    v17 = 30.0;
    v15 = 0.0;
    v14 = 0;
    v16 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v127 = (*(v126 + 968))();

    v17 = 18.0;
    if (v127)
    {

      v15 = 0.0;
    }

    else
    {
      v15 = 24.0;
    }
  }

LABEL_54:
  *a6 = v15;
  *(a6 + 8) = v14;
  *(a6 + 16) = v17;
  *(a6 + 24) = v16;
  *(a6 + 32) = 0;
}

uint64_t sub_1E3C123DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1E373F6E0(*(a1 + 98), 117, a3, a4, a5, a6) & 1) == 0)
  {
    return 2;
  }

  OUTLINED_FUNCTION_8();
  if (!(*(v6 + 960))())
  {
    return 2;
  }

  sub_1E3741534(v7, v8, v9);
  if (sub_1E4205E84())
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

void sub_1E3C124B0(uint64_t a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, double a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v14 = v9;
  v23 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
  [v23 setWrapsForTruncationMode_];
  [v23 setWantsNumberOfLineFragments_];
  if ((a2 & 1) != 0 || a1 < 2)
  {
    OUTLINED_FUNCTION_19_81(v14, sel_boundingRectWithSize_options_context_);
    OUTLINED_FUNCTION_18_73();
    goto LABEL_20;
  }

  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else if (((a1 + 1) & 0x8000000000000000) == 0)
  {
    [v23 setMaximumNumberOfLines_];
    if (a4)
    {
      sub_1E3A286D4();
      v24 = sub_1E41DA724();
    }

    else
    {
      v24 = a3;
    }

    if (v24 < 0.0)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v24;
    }

    v26 = a5;
    if (a6)
    {
      v26 = 10.0;
    }

    if (v26 < 0.0)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = v26;
    }

    v28 = OUTLINED_FUNCTION_16_91();
    OUTLINED_FUNCTION_19_81(v28, v29);
    OUTLINED_FUNCTION_18_73();
    v30 = [v23 numberOfLineFragments];
    if (v27 <= v25 && v30 <= a1 && v13 <= v25)
    {
      v31 = OUTLINED_FUNCTION_16_91();
      OUTLINED_FUNCTION_19_81(v31, v32);
      v34 = v33;
      v58 = v36;
      v60 = v35;
      v38 = v37;
      if ([v23 numberOfLineFragments] > a1 || v38 > v27)
      {
        v57 = v10;
        v59 = v12;
        v61 = v11;
        v40 = a7;
        if (a7 < 0.0)
        {
          v40 = 0.0;
        }

        if (a8)
        {
          v40 = 10.0;
        }

        v56 = v40;
        do
        {
          v41 = v25 + (v25 - v27) * -0.5;
          OUTLINED_FUNCTION_19_81(v14, sel_boundingRectWithSize_options_context_);
          v43 = v42;
          v45 = v44;
          v47 = v46;
          v49 = v48;
          if ([v23 numberOfLineFragments] <= a1)
          {
            if (v47 > v41)
            {
              v50 = v61;
            }

            else
            {
              v50 = v43;
            }

            v51 = v59;
            if (v47 <= v41)
            {
              v51 = v45;
            }

            v59 = v51;
            v61 = v50;
            v52 = v57;
            if (v47 <= v41)
            {
              v52 = v49;
            }

            v57 = v52;
            if (v47 <= v41)
            {
              v25 = v25 + (v25 - v27) * -0.5;
              v41 = v27;
            }
          }

          v27 = v41;
        }

        while (v25 - v41 >= v56);
        v62.origin.x = OUTLINED_FUNCTION_4_149();
        v62.size.height = v57;
        v11 = ceil(CGRectGetMinX(v62));
        v63.origin.x = OUTLINED_FUNCTION_4_149();
        v63.size.height = v57;
        v12 = ceil(CGRectGetMinY(v63));
        v64.origin.x = OUTLINED_FUNCTION_4_149();
        v64.size.height = v57;
        v53 = ceil(CGRectGetWidth(v64));
        v65.origin.x = OUTLINED_FUNCTION_4_149();
        v65.size.height = v57;
        Height = CGRectGetHeight(v65);

        v10 = ceil(Height);
        v13 = v53;
      }

      else
      {

        v11 = v34;
        v10 = v58;
        v12 = v60;
        v13 = v38;
      }

      goto LABEL_21;
    }

LABEL_20:

LABEL_21:
    *a9 = v11;
    *(a9 + 8) = v12;
    *(a9 + 16) = v13;
    *(a9 + 24) = v10;
    *(a9 + 32) = 0;
    return;
  }

  __break(1u);
}